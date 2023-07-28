# 1 "startupCode.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "startupCode.c"

extern unsigned int __data_load__ ;
extern unsigned int __data_start__ ;
extern unsigned int __data_end__ ;
extern unsigned int __bss_start__ ;
extern unsigned int __bss_end__ ;
extern unsigned int _stack ;

void ResetHandler(void)
{




unsigned int *Ptr2Sbss = (unsigned int*)&__bss_start__;
unsigned int *Ptr2Ebss = (unsigned int*)&__bss_end__;

unsigned int *Ptr2Src = (unsigned int*)&__data_load__;
unsigned int *Ptr2sDes = (unsigned int*)&__data_start__;
unsigned int *Ptr2eDes = (unsigned int*)&__data_end__;


  while(Ptr2Sbss< Ptr2Ebss)
  {
   *(Ptr2Sbss++) = 0;
  }



 while(Ptr2sDes< Ptr2eDes)
 {


  *(Ptr2sDes++) = *(Ptr2Src++);
 }



 main();

 while(1);

}
