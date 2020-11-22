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

/************************** Constant Definitions *****************************/
/**************************** Type Definitions *******************************/
/***************** Macros (Inline Functions) Definitions *********************/
/************************** Function Prototypes ******************************/
int FfsSdPolledExample(void);

/************************** Variable Definitions *****************************/
static FIL fil;		/* File object */
static FATFS fatfs;
/*
 * To test logical drive 0, FileName should be "0:/<File name>" or
 * "<file_name>". For logical drive 1, FileName should be "1:/<file_name>"
 */
static char FileName[32] = "file3.bin";

static char *SD_File;
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

XGpio Gpio;											/* GPIO Device driver instance */

int LEDOutputExample(void)
{

	volatile int Delay;
	int Status;
	int led = LED; /* Hold current LED value. Initialise to LED definition */

		/* GPIO driver initialisation */
		Status = XGpio_Initialize(&Gpio, GPIO_DEVICE_ID);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		/*Set the direction for the LEDs to output. */
		XGpio_SetDataDirection(&Gpio, LED_CHANNEL, 0x0);

		/* Loop forever blinking the LED. */
        //while (1) {
				/* Write output to the LEDs. */
				XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, led);

				/* Flip LEDs. */
		//		led = ~led;

				/* Wait a small amount of time so that the LED blinking is visible. */
		//		for (Delay = 0; Delay < LED_DELAY; Delay++);
		//	}

		return XST_SUCCESS; /* Should be unreachable */
}


int main(void)
{
	int Status;
	int sws = 0;

	xil_printf("The code for LED flip is here:\r\n");

	/* Execute the LED output. */
	Status = LEDOutputExample();
	if (Status != XST_SUCCESS) {
		xil_printf("GPIO output to the LEDs failed!\r\n");
	}


	xil_printf("The code for switch detection flip is here:\r\n");
	// This code reads SWS settings from the switches.
	Status = XGpio_Initialize(&Gpio, GPIO1_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("tak ada GPIO1 \r\n");
		return XST_FAILURE;
	} else {
		XGpio_SetDataDirection(&Gpio, SWS_CHANNEL, 0x1F); //set as input
		while(1){
			sws = XGpio_DiscreteRead(&Gpio, SWS_CHANNEL);
			xil_printf("sws 1 data read is %d \r\n", sws);
		}
	}


	xil_printf("SD Polled File System Example Test \r\n");

	// Before this, we already write 3 files.
	// file1.bin consist of number 8 as the content
	// file2.bin consist of number 5 as the content
	// file3.bin consist of number 3 as the content

	// below code will demonstrate that we are able to read from file 1 to 3.
	Status = FfsSdPolledExample();
	if (Status != XST_SUCCESS) {
		xil_printf("SD Polled File System Example Test failed \r\n");
		return XST_FAILURE;
	}

	xil_printf("Successfully ran SD Polled File System Example Test \r\n");
	return XST_SUCCESS;
}

/*****************************************************************************/
/**
** File system example using SD driver to write to and read from an SD card
* in polled mode. This example creates a new file on an
* SD card (which is previously formatted with FATFS), write data to the file
* and reads the same data back to verify.
*
* @param	None
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE.
* @note		None
*
******************************************************************************/
int FfsSdPolledExample(void)
{
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
		SourceAddress[BuffCnt] = 3;
	}

	/* Register volume work area, initialize device	 */
	Res = f_mount(&fatfs, Path, 0);

	if (Res != FR_OK) {
		xil_printf("SD f_mount failed \r\n");
		return XST_FAILURE;
	}

/*	Res = f_mkfs(Path, 0, 0);
	if (Res != FR_OK) {
		xil_printf("SD f_mkfs failed \r\n");
		return XST_FAILURE;
	}
*/
	SD_File = (char *)FileName;

	Res = f_open(&fil, SD_File, FA_CREATE_ALWAYS | FA_WRITE | FA_READ);
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

	/* Write data to file.
	Res = f_write(&fil, (const void*)SourceAddress, FileSize,
			&NumBytesWritten);
	if (Res) {
		xil_printf("SD f_write failed \r\n");
		return XST_FAILURE;
	}*/

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
		xil_printf("destination : %d \r\n",DestinationAddress[BuffCnt]);
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
