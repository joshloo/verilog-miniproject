/******************************************************************************
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
******************************************************************************
*
* @file xilffs_polled_example.c
*
*
* @note This example uses file system with SD to write to and read from
* an SD card using ADMA2 in polled mode.
* To test this example File System should not be in Read Only mode.
* To test this example USE_MKFS option should be true.
*
* This example was tested using SD2.0 card and eMMC (using eMMC to SD adaptor).
*
* To test with different logical drives, drive number should be mentioned in
* both FileName and Path variables. By default, it will take drive 0 if drive
* number is not mentioned in the FileName variable.
* For example, to test logical drive 1
* FileName =  "1:/<file_name>" and Path = "1:/"
* Similarly to test logical drive N, FileName = "N:/<file_name>" and
* Path = "N:/"
******************************************************************************/

/***************************** Include Files *********************************/

#include "xparameters.h"	/* SDK generated parameters */
#include "xsdps.h"		/* SD device driver */
#include "xil_printf.h"
#include "ff.h"
#include "xil_cache.h"
#include "xgpio.h"
#include "xplatform_info.h"
#include "xil_io.h"

/************************** Constant Definitions *****************************/
/**************************** Type Definitions *******************************/
/***************** Macros (Inline Functions) Definitions *********************/
/************************** Function Prototypes ******************************/
int writeFile(int fileNum);
int readFile(int fileNum);

/************************** Variable Definitions *****************************/
static FIL fil;		/* File object */
static FATFS fatfs;
/*
 * To test logical drive 0, FileName should be "0:/<File name>" or
 * "<file_name>". For logical drive 1, FileName should be "1:/<file_name>"
 */
char FileName[32] = "file.bin";

static char *SD_FileRead;
static char *SD_FileWrite;
u32 Platform;

u8 DestinationAddress[10*1024*1024] __attribute__ ((aligned(32)));
u8 SourceAddress[10*1024*1024] __attribute__ ((aligned(32)));

#define TEST 7

/* Definitions */
#define GPIO_DEVICE_ID  XPAR_AXI_GPIO_0_DEVICE_ID	/* GPIO device that LEDs are connected to */
#define GPIO1_DEVICE_ID  XPAR_AXI_GPIO_1_DEVICE_ID	/* GPIO device that SWS are connected to */
#define LED 0x9										/* Initial LED value - X00X */
#define LED_DELAY 10000000							/* Software delay length */
#define LED_CHANNEL 1								/* GPIO port for LEDs */
#define SWS_CHANNEL 1								/* GPIO port for SWS */
#define printf xil_printf							/* smaller, optimised printf */

// Address of arbitor data
#define MY_ARBITOR	 	0x43C00000 				//This value is found in the Address editor tab in Vivado (next to Diagram tab)

XGpio Gpio0, Gpio1;									/* GPIO Device driver instance */
// GPIO 0 is LED, GPIO 1 is switch

int main(void)
{
	xil_printf("===================\r\n");
	xil_printf("Program starts here\r\n");
	xil_printf("===================\r\n");
	int Status;
	int sws = 0;
	int i = 0;
	int request1 = 0, request2 = 0, request3 = 0;
	int granted_request = 0;
	int previous_request = 0;

	xil_printf("Initializing file write..\r\n");
	// this 3 functions write file 1 to 3.
	// file1.bin now contains 5
	// file2.bin now contains 10
	// file3.bin now contains 15
	Status = writeFile(1);
	if (Status != XST_SUCCESS) {
		xil_printf("Write file 1 failed\r\n");
	}
	Status = writeFile(2);
	if (Status != XST_SUCCESS) {
		xil_printf("Write file 2 failed\r\n");
	}
	Status = writeFile(3);
	if (Status != XST_SUCCESS) {
		xil_printf("Write file 3 failed\r\n");
	}
	xil_printf("All 3 files written successfully..\r\n");

	xil_printf("Beginning switch detection\r\n");
	// This code reads SWS settings from the switches.
	Status = XGpio_Initialize(&Gpio0, GPIO_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("tak ada GPIO0, returning...\r\n");
		return XST_FAILURE;
	}
	Status = XGpio_Initialize(&Gpio1, GPIO1_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("tak ada GPIO1, returning...\r\n");
		return XST_FAILURE;
	} else {
		XGpio_SetDataDirection(&Gpio1, SWS_CHANNEL, 0x1F); //set as input
		XGpio_SetDataDirection(&Gpio0, LED_CHANNEL, 0x0); //set as output
		while(1){
			sws = XGpio_DiscreteRead(&Gpio1, SWS_CHANNEL);
			if (previous_request == sws) {
				continue;
			}

			xil_printf("SWS 1 data read is %d \r\n", sws);
			//XGpio_DiscreteWrite(&Gpio0, LED_CHANNEL, sws); // directly write sws settings to led

	     //   Xil_Out32(MY_ARBITOR, sws);

			// extract out the request to be printed in C settings
			request1 = (sws & (1 << 2)) >> 2;
			request2 = (sws & (1 << 1)) >> 1;
			request3 = (sws & (1 << 0)) >> 0;
			xil_printf("request1: %d \r\n", request1);
			xil_printf("request2: %d \r\n", request2);
			xil_printf("request3: %d \r\n", request3);

	     //   granted_request = Xil_In32(MY_ARBITOR+4);
			granted_request = sws;
			xil_printf("granted_request: %d \r\n", granted_request);

			request1 = (granted_request & (1 << 2)) >> 2;
			request2 = (granted_request & (1 << 1)) >> 1;
			request3 = (granted_request & (1 << 0)) >> 0;
			xil_printf("Granted request1: %d \r\n", request1);
			xil_printf("Granted request2: %d \r\n", request2);
			xil_printf("Granted request3: %d \r\n", request3);

			// Write granted request to LED channel
			XGpio_DiscreteWrite(&Gpio0, LED_CHANNEL, granted_request);

			// state machine needs to be implemented here
			if (request1 == 1) {
				readFile(1);
			}
			if (request2 == 1) {
				readFile(2);
			}
			if (request3 == 1) {
				readFile(3);
			}
			previous_request = sws;
	        for(i=0;i<300000; i++);
		}
	}
	return XST_SUCCESS;
}

// This is the function to write file to SD card.
int writeFile(int fileNum) {
	switch (fileNum) {
		case 1:
			strncpy(FileName, "file1.bin", sizeof(FileName));
		//	FileName = "file1.bin";
			break;
		case 2:
			strncpy(FileName, "file2.bin", sizeof(FileName));
			//FileName = "file2.bin";
			break;
		case 3:
			strncpy(FileName, "file3.bin", sizeof(FileName));
			//FileName = "file3.bin";
			break;
		default:
			strncpy(FileName, "", sizeof(FileName));
			//FileName = "";
	}
	xil_printf("filename to be written is: %s \r\n", FileName);
	FRESULT Res;
	UINT NumBytesRead;
	UINT NumBytesWritten;
	u32 BuffCnt;
	u32 FileSize = 1;
	/*
	 * To test logical drive 0, Path should be "0:/"
	 * For logical drive 1, Path should be "1:/"
	 */
	TCHAR *Path = "0:/";

	Platform = XGetPlatform_Info();

	for(BuffCnt = 0; BuffCnt < FileSize; BuffCnt++){
		SourceAddress[BuffCnt] = fileNum*5;
	}

	/* Register volume work area, initialize device	 */
	Res = f_mount(&fatfs, Path, 0);

	if (Res != FR_OK) {
		xil_printf("SD f_mount failed \r\n");
		return XST_FAILURE;
	}

	SD_FileWrite = (char *)FileName;

	Res = f_open(&fil, SD_FileWrite, FA_CREATE_ALWAYS | FA_WRITE | FA_READ);
	if (Res) {
		xil_printf("SD f_open failed \r\n");
		return XST_FAILURE;
	}

	/* Pointer to beginning of file .	 */
	Res = f_lseek(&fil, 0);
	if (Res) {
		xil_printf("SD f_lseek failed \r\n");
		return XST_FAILURE;
	}

	/* Write data to file.*/
	Res = f_write(&fil, (const void*)SourceAddress, FileSize,
			&NumBytesWritten);
	if (Res) {
		xil_printf("SD f_write failed \r\n");
		return XST_FAILURE;
	}

	/* Pointer to beginning of file .*/
	Res = f_lseek(&fil, 0);
	if (Res) {
		return XST_FAILURE;
	}

	/* Read data from file.	 */
	Res = f_read(&fil, (void*)DestinationAddress, FileSize,
			&NumBytesRead);
	if (Res) {
		return XST_FAILURE;
	} else {
		xil_printf("read successful!! number of byte read is : %d \r\n", NumBytesRead);
	}

	/* Data verification */
	for(BuffCnt = 0; BuffCnt < FileSize; BuffCnt++){
		xil_printf("content written : %d \r\n",DestinationAddress[BuffCnt]);
		if(SourceAddress[BuffCnt] != DestinationAddress[BuffCnt]){
			return XST_FAILURE;
		}
	}
	Res = f_close(&fil);
	if (Res) {
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}

// This is the function to read file from SD card.
int readFile(int fileNum) {
	switch (fileNum) {
		case 1:
			strncpy(FileName, "file1.bin", sizeof(FileName));
			break;
		case 2:
			strncpy(FileName, "file2.bin", sizeof(FileName));
			break;
		case 3:
			strncpy(FileName, "file3.bin", sizeof(FileName));
			break;
		default:
			strncpy(FileName, "", sizeof(FileName));
	}
	xil_printf("filename to be read is: %s \r\n", FileName);
	FRESULT Res;
	UINT NumBytesRead;
	u32 BuffCnt;
	u32 FileSize = 1;
	/*
	 * To test logical drive 0, Path should be "0:/"
	 * For logical drive 1, Path should be "1:/"
	 */
	TCHAR *Path = "0:/";

	Platform = XGetPlatform_Info();

	for (BuffCnt = 0; BuffCnt < FileSize; BuffCnt++) {
		SourceAddress[BuffCnt] = 8;
	}

	/* Register volume work area, initialize device	 */
	Res = f_mount(&fatfs, Path, 0);

	if (Res != FR_OK) {
		xil_printf("SD f_mount failed \r\n");
		return XST_FAILURE;
	}

	SD_FileRead = (char *)FileName;

	Res = f_open(&fil, SD_FileRead, FA_CREATE_ALWAYS | FA_WRITE | FA_READ);
	if (Res) {
		xil_printf("SD f_open failed \r\n");
		return XST_FAILURE;
	}

	/* Pointer to beginning of file .	 */
	Res = f_lseek(&fil, 0);
	if (Res) {
		xil_printf("SD f_lseek failed \r\n");
		return XST_FAILURE;
	}

	/* Pointer to beginning of file .*/
	Res = f_lseek(&fil, 0);
	if (Res) {
		return XST_FAILURE;
	}

	/* Read data from file.	 */
	Res = f_read(&fil, (void*)DestinationAddress, FileSize,
		&NumBytesRead);
	if (Res) {
		return XST_FAILURE;
	}
	else {
		xil_printf("Based on request, content read : \r\n");
	}

	/* Data verification */
	for (BuffCnt = 0; BuffCnt < FileSize; BuffCnt++) {
		xil_printf("%d \r\n", DestinationAddress[BuffCnt]);
		if (SourceAddress[BuffCnt] != DestinationAddress[BuffCnt]) {
			return XST_FAILURE;
		}
	}
	Res = f_close(&fil);
	if (Res) {
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}
