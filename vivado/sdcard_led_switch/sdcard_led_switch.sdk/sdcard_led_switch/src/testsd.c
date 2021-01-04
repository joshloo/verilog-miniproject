#include "xparameters.h"
#include "xsdps.h"

#include <stdio.h>

typedef unsigned char bool_t;

typedef enum xilSDResult
{
   XILSD_SUCCESS = 0,
   XILSD_NO_CARD,
   XILSD_WRITE_PROTECTION,
   XILSD_ERR_WRITING,
   XILSD_ERR_READING
} xilSDResult_t;

#define SD_DEVICE_ID    XPAR_XSDPS_0_DEVICE_ID
#define SD_BASEADDR     XPAR_PS7_SD_0_BASEADDR
#define SD_CLK_FREQ_HZ  XPAR_PS7_SD_0_SDIO_CLK_FREQ_HZ

#define CARD_INSERTED(a) ((a & XSDPS_PSR_CARD_INSRT_MASK) >> 16) ? TRUE : FALSE
#define WRITE_PROTECTED(a) ((a & XSDPS_PSR_WPS_PL_MASK) >> 18) ? TRUE :FALSE

static XSdPs gXilSdPsInst;

bool_t isCardInTheSocket(void);
bool_t isCardWriteProtected(void);
bool_t xilSdInit(void);
xilSDResult_t xilSdWrite(uint8_t* buff, uint32_t blkId, uint32_t numBlks);
xilSDResult_t xilSdRead(uint8_t* buff, uint32_t blkId, uint32_t numBlks);

int main2(void)
{
   bool_t status;
   uint8_t write[3*512] = {0,0,0};
   uint8_t read[3*512] = {0,0,0};
   uint8_t read1[3*512] = {0,0,0};

   uint32_t i = 0;

   printf("XIL SD PS DRIVER TEST\n");

   for(i=0; i < (3*512); i++)
   {
      write[i] = 0xAA;
   }

   status = xilSdInit();

   printf("SD Controller init with status = %d \n", status);

   status = xilSdRead(read1, 3000, 3);

   printf("SD Reading with status = %d \n", status);

   printf("Read1 v1 = %d v2 = %d v3 =%d\n", read[0], read[1], read[511]);

   status = xilSdWrite(write, 3000, 3);

   printf("SD Writing with status = %d \n", status);

   printf("Write v1 = %d v2 = %d v3 =%d\n", write[1], write[512-1], write[3*512-1]);

   status = xilSdRead(read, 3000, 3);

   printf("SD Reading with status = %d \n", status);

   printf("Read v1 = %d v2 = %d v3 =%d\n", read[1], read[511], read[2*513]);

   return 0;
}

bool_t isCardInTheSocket(void)
{
   bool_t   ret;
   uint32_t statusReg;

   statusReg = XSdPs_GetPresentStatusReg(SD_BASEADDR);

   ret = CARD_INSERTED(statusReg);

   return ret;
}

bool_t isCardWriteProtected(void)
{
   bool_t   ret;
   uint32_t statusReg;

   statusReg = XSdPs_GetPresentStatusReg(SD_BASEADDR);

   ret = WRITE_PROTECTED(statusReg);

   return ret;
}

bool_t xilSdInit(void)
{
   bool_t ret = TRUE;

   uint32_t status;
   XSdPs *sdInstPtr = &gXilSdPsInst;
   XSdPs_Config *ConfigPtr;

   //Check if it is possible to write in card (card must be inserted)

   //Write enable can also be checked if it is routed on HW
   if(isCardInTheSocket() != TRUE)
   {
      printf("SD device is not inserted", NULL);
      return FALSE;
   }

   /*
    * If card can be written, controller is initialized
    */
   ConfigPtr = XSdPs_LookupConfig(SD_DEVICE_ID);
   if (ConfigPtr == NULL)
   {
      printf("SD device does not exist", NULL);
      ret = FALSE;
   }

   status = XSdPs_CfgInitialize(sdInstPtr, ConfigPtr, ConfigPtr->BaseAddress);
   if (status != XST_SUCCESS)
   {
      printf("SD controller could not be initialized", NULL);
      ret = FALSE;
   }

   status = XSdPs_CardInitialize(sdInstPtr);
   if(status != XST_SUCCESS)
   {
      printf("SD card could not be initialized", NULL);
      ret = FALSE;
   }

   return ret;

}

xilSDResult_t xilSdWrite(uint8_t* buff, uint32_t blkId, uint32_t numBlks)
{
   XSdPs *sdInstPtr = &gXilSdPsInst;
   uint32_t statusReg;
   xilSDResult_t ret;

   statusReg = XSdPs_WritePolled(sdInstPtr,blkId, numBlks, buff);
   if(statusReg != XST_SUCCESS)
   {
      printf("SD WRITING did not end correctly. Block = %d Blocks-count = %d", blkId, numBlks);
      ret = XILSD_ERR_WRITING;
   }

   return ret;
}

xilSDResult_t xilSdRead(uint8_t* buff, uint32_t blkId, uint32_t numBlks)
{
   XSdPs *sdInstPtr = &gXilSdPsInst;
   uint32_t statusReg;
   xilSDResult_t ret;

   statusReg = XSdPs_ReadPolled(sdInstPtr,blkId, numBlks, buff);
   if(statusReg != XST_SUCCESS)
   {
      printf("SD READING did not end correctly. Block = %d Blocks-count = %d", blkId, numBlks);
      ret = XILSD_ERR_READING;
   }

   return ret;
}
