#riscv32-unknown-elf-as -g standbyAWU1.S -o standbyAWU1.o
#riscv32-unknown-elf-ld -T CH32V003.ld -Map=final.map standbyAWU1.O
#riscv32-unknown-elf-objcopy -O ihex a.out standbyAWU1.hex

.equ SRAM_start, 0x20000000
.equ SRAM_end, 0x20000800
.equ STACK, 0x20000800



.equ TIM2_BASE, 0x40000000
.equ W_WDG_BASE, 0x40002C00
.equ I_WDG_BASE, 0x40003000
.equ I2C_BASE, 0x40005400
.equ PWR_BASE, 0x40007000
.equ AFIO_BASE, 0x40010000
.equ EXTI_BASE, 0x40010400
.equ PORTA_BASE, 0x40010800
.equ PORTC_BASE, 0x40011000
.equ PORTD_BASE, 0x40011400
.equ ADC_BASE, 0x40012400
.equ TIM1_BASE, 0x40012C00
.equ SPI_BASE, 0x40013000
.equ USART_BASE, 0x40013800
.equ DMA_BASE, 0x40020000
.equ RCC_BASE, 0x40021000
.equ FLASH_INTERFACE_BASE, 0x40022000
.equ EXTENDED_MEM_BASE, 0x40023800
.equ CORE_PRIVATE_BASE, 0xE0000000
.equ FLASH_BASE, 0x08000000


.equ R32_PWR_CTLR, 0x40007000 	#Power control register
.equ R32_PWR_CSR, 0x40007004 	#Power control/status register
.equ R32_PWR_AWUCSR, 0x40007008 #Auto-wakeup control/status register
.equ R32_PWR_AWUWR, 0x4000700C	#Auto-wakeup window comparison value register
.equ R32_PWR_AWUPSC, 0x40007010 	#Auto-wakeup crossover factor register
.equ R32_RCC_CTLR, 0x40021000 	#Clock control register 0x0000xx83
.equ R32_RCC_CFGR0, 0x40021004 	#Clock configuration register 0 0x00000000
.equ R32_RCC_INTR, 0x40021008 	#Clock interrupt register 0x00000000
.equ R32_RCC_APB2PRSTR, 0x4002100C 	#APB2 peripheral reset register 0x00000000
.equ R32_RCC_APB1PRSTR, 0x40021010 	# APB1 peripheral reset register 0x00000000
.equ R32_RCC_AHBPCENR, 0x40021014 	#AHB peripheral clock enable register 0x00000014
.equ R32_RCC_APB2PCENR, 0x40021018 #APB2 peripheral clock enable register 0x00000000
.equ R32_RCC_APB1PCENR, 0x4002101C 	#APB1 peripheral clock enable register 0x00000000
.equ R32_RCC_RSTSCKR, 0x40021024   	#Control/status register

.equ R16_IWDG_CTLR, 0x40003000 	#Control register 0x0000
.equ R16_IWDG_PSCR, 0x40003004	#Prescaler register 0x0000
.equ R16_IWDG_RLDR, 0x40003008 	#Reload register 0x0FFF
.equ R16_IWDG_STATR, 0x4000300C 	#Status register

.equ R16_WWDG_CTLR, 0x40002C00 	#Control register 0x007F
.equ R16_WWDG_CFGR, 0x40002C04 	#Configuration Register 0x007F
.equ R16_WWDG_STATR, 0x40002C08 	#Status Register

.equ R32_EXTI_INTENR, 0x40010400 	#Interrupt enable register 0x00000000
.equ R32_EXTI_EVENR,  0x40010404 	#Event enable register 0x00000000
.equ R32_EXTI_RTENR, 0x40010408 	#Rising edge trigger enable register 0x00000000
.equ R32_EXTI_FTENR, 0x4001040C 	#Falling edge trigger enable register 0x00000000
.equ R32_EXTI_SWIEVR, 0x40010410 	#Soft interrupt event register 0x00000000
.equ R32_EXTI_INTFR, 0x40010414 	#Interrupt flag register

.equ R32_PFIC_ISR1, 0xE000E000 	#PFIC interrupt enable status register 1
.equ R32_PFIC_ISR2, 0xE000E004 	#PFIC interrupt enable status register 2 
.equ R32_PFIC_IPR1, 0xE000E020 	#PFIC interrupt pending status register 1 
.equ R32_PFIC_IPR2, 0xE000E024 	#PFIC interrupt pending status register 2 
.equ R32_PFIC_ITHRESDR, 0xE000E040 	#PFIC interrupt priority threshold configuration register
.equ R32_PFIC_CFGR, 0xE000E048 	#PFIC interrupt configuration register
.equ R32_PFIC_GISR, 0xE000E04C 	#PFIC interrupt global status register 
.equ R32_PFIC_VTFIDR, 0xE000E050 	#PFIC VTF interrupt ID configuration register
.equ R32_PFIC_VTFADDRR0, 0xE000E060 #PFIC VTF interrupt 0 offset address register
.equ R32_PFIC_VTFADDRR1, 0xE000E064 #PFIC VTF interrupt 1 offset address register
.equ R32_PFIC_IENR1, 0xE000E100	#PFIC interrupt enable setting register 1 
.equ R32_PFIC_IENR2, 0xE000E104 	#PFIC interrupt enable setting register 2 
.equ R32_PFIC_IRER1, 0xE000E180 	#PFIC interrupt enable clear register 1 
.equ R32_PFIC_IRER2, 0xE000E184 	#PFIC interrupt enable clear register 2 
.equ R32_PFIC_IPSR1, 0xE000E200 	#PFIC interrupt pending setting register 1 
.equ R32_PFIC_IPSR2, 0xE000E204 	#PFIC interrupt pending setting register 2 
.equ R32_PFIC_IPRR1, 0xE000E280 	#PFIC interrupt hang clear register 1 
.equ R32_PFIC_IPRR2, 0xE000E284 	#PFIC interrupt hang clear register 2 
.equ R32_PFIC_IACTR1, 0xE000E300 	#PFIC interrupt activation status register1
.equ R32_PFIC_IACTR2, 0xE000E304 	#PFIC interrupt activation status register2
.equ R32_PFIC_IPRIOR1, 0xE000E400 	#PFIC interrupt priority configuration register
.equ R32_PFIC_IPRIOR2, 0xE000E401 	#PFIC interrupt priority configuration register
.equ R32_PFIC_SCTLR, 0xE000ED10 	#PFIC system control register

.equ INTSYSCR, 0x804 		#Interrupt System Control Register
.equ MTVEC, 0x305 		#Exception Entry Base Address Register
.equ DBGMCU_CR, 0x7C0  		#Debug MCU Configuration Register (CSR)
 
.equ R32_STK_CTLR, 0xE000F000 	#System count control register 
.equ R32_STK_SR, 0xE000F004 	#System count status register 
.equ R32_STK_CNTR, 0xE000F008	# System counter low register 
.equ R32_STK_CMPR, 0xE000F010 	#Counting comparison low register


.equ R32_GPIOA_CFGLR, 0x40010800 	#PA port configuration register low 0x44444444
.equ R32_GPIOC_CFGLR, 0x40011000 	#PC port configuration register low 0x44444444
.equ R32_GPIOD_CFGLR, 0x40011400 	#PD port configuration register low 0x44444444
.equ R32_GPIOA_INDR, 0x40010808 	#PA port input data register 0x0000XXXX
.equ R32_GPIOC_INDR, 0x40011008 	#PC port input data register 0x0000XXXX
.equ R32_GPIOD_INDR, 0x40011408 	#PD port input data register 0x0000XXXX
.equ R32_GPIOA_OUTDR, 0x4001080C 	#PA port output data register 0x00000000
.equ R32_GPIOC_OUTDR, 0x4001100C 	#PC port output data register 0x00000000
.equ R32_GPIOD_OUTDR, 0x4001140C 	#PD port output data register 0x00000000
.equ R32_GPIOA_BSHR, 0x40010810 	#PA port set/reset register 0x00000000
.equ R32_GPIOC_BSHR, 0x40011010 	#PC port set/reset register 0x00000000
.equ R32_GPIOD_BSHR, 0x40011410 	#PD port set/reset register 0x00000000
.equ R32_GPIOA_BCR, 0x40010814 	#PA port reset register 0x00000000
.equ R32_GPIOC_BCR, 0x40011014 	#PC port reset register
.equ R32_GPIOD_BCR, 0x40011414 	#PD port reset register 0x00000000
.equ R32_GPIOA_LCKR, 0x40010818 	#PA port configuration lock register 0x00000000
.equ R32_GPIOC_LCKR, 0x40011018 	#PC port configuration lock register 0x00000000
.equ R32_GPIOD_LCKR, 0x40011418 	#PD port configuration lock register 
.equ R32_AFIO_PCFR1, 0x40010004	#AFIO Remap Register 1
.equ R32_AFIO_EXTICR, 0x40010008 	#External interrupt configuration register 1

.equ R32_DMA_INTFR, 0x40020000 	#DMA interrupt status register 0x00000000
.equ R32_DMA_INTFCR, 0x40020004 	#DMA interrupt flag clear register 0x00000000
.equ R32_DMA_CFGR1, 0x40020008 	#DMA channel 1 configuration register 0x00000000
.equ R32_DMA_CNTR1, 0x4002000C 	#DMA channel 1 number of data register
.equ R32_DMA_PADDR1, 0x40020010 	#DMA channel 1 peripheral address register 0x00000000
.equ R32_DMA_MADDR1, 0x40020014 	#DMA channel 1 memory address register 0x00000000
.equ R32_DMA_CFGR2, 0x4002001C 	#DMA channel 2 configuration register 0x00000000
.equ R32_DMA_CNTR2, 0x40020020 	#DMA channel 2 number of data register 0x00000000
.equ R32_DMA_PADDR2, 0x40020024 	#DMA channel 2 peripheral address register 0x00000000
.equ R32_DMA_MADDR2, 0x40020028 	#DMA channel 2 memory address register 0x00000000
.equ R32_DMA_CFGR3, 0x40020030 	#DMA channel 3 configuration register 0x00000000
.equ R32_DMA_CNTR3, 0x40020034 	#DMA channel 3 number of data register 0x00000000
.equ R32_DMA_PADDR3, 0x40020038 	#DMA channel 3 peripheral address register 0x00000000
.equ R32_DMA_MADDR3, 0x4002003C 	#DMA channel 3 memory address register 0x00000000
.equ R32_DMA_CFGR4, 0x40020044 	#DMA channel 4 configuration register 0x00000000
.equ R32_DMA_CNTR4, 0x40020048 	#DMA channel 4 number of data register 0x00000000
.equ R32_DMA_PADDR4, 0x4002004C 	#DMA channel 4 peripheral address register 0x00000000
.equ R32_DMA_MADDR4, 0x40020050 	#DMA channel 4 memory address register 0x00000000
.equ R32_DMA_CFGR5, 0x40020058	#DMA channel 5 configuration register 0x00000000
.equ R32_DMA_CNTR5, 0x4002005C 	#DMA channel 5 number of data register 0x00000000
.equ R32_DMA_PADDR5, 0x40020060 	#DMA channel 5 peripheral address register 0x00000000
.equ R32_DMA_MADDR5, 0x40020064 	#DMA channel 5 memory address register 0x00000000
.equ R32_DMA_CFGR6, 0x4002006C 	#DMA channel 6 configuration register 0x00000000
.equ R32_DMA_CNTR6, 0x40020070 	#DMA channel 6 number of data register 0x00000000
.equ R32_DMA_PADDR6, 0x40020074 	#DMA channel 6 peripheral address register 0x00000000
.equ R32_DMA_MADDR6, 0x40020078 	#DMA channel 6 memory address register 0x00000000
.equ R32_DMA_CFGR7, 0x40020080 	#DMA channel 7 configuration register 0x00000000
.equ R32_DMA_CNTR7, 0x40020084 	#DMA channel 7 number of data register 0x00000000
.equ R32_DMA_PADDR7, 0x40020088 	#DMA channel 7 peripheral address register 0x00000000
.equ R32_DMA_MADDR7, 0x4002008C 	#DMA channel 7 memory address register


.equ R32_ADC_STATR, 0x40012400 	#ADC status register 0x00000000
.equ R32_ADC_CTLR1, 0x40012404 	#ADC control register 1 0x00000000
.equ R32_ADC_CTLR2, 0x40012408 	#ADC control register 2 0x00000000
.equ R32_ADC_SAMPTR1, 0x4001240C 	#ADC sample time register 1 0x00000000
.equ R32_ADC_SAMPTR2, 0x40012410 	#ADC sample time register 2 0x00000000
.equ R32_ADC_IOFR1, 0x40012414 	#ADC injected channel data offset register 1 0x00000000
.equ R32_ADC_IOFR2, 0x40012418 	#ADC injected channel data offset register 2 0x00000000
.equ R32_ADC_IOFR3, 0x4001241C 	#ADC injected channel data offset register 3 0x00000000
.equ R32_ADC_IOFR4, 0x40012420 	#ADC injected channel data offset register 4 0x00000000
.equ R32_ADC_WDHTR, 0x40012424 	#ADC watchdog high threshold register 0x00000000
.equ R32_ADC_WDLTR, 0x40012428 	#ADC watchdog low threshold register 0x00000000
.equ R32_ADC_RSQR1, 0x4001242C 	#ADC regular sequence register 1 0x00000000
.equ R32_ADC_RSQR2, 0x40012430 	#ADC regular sequence register 2 0x00000000
.equ R32_ADC_RSQR3, 0x40012434 	#ADC regular sequence register 3 0x00000000
.equ R32_ADC_ISQR, 0x40012438 	#ADC injected sequence register 0x00000000
.equ R32_ADC_IDATAR1, 0x4001243C 	#ADC injected data register 1 0x00000000
.equ R32_ADC_IDATAR2, 0x40012440 	#ADC injected data register 2 0x00000000
.equ R32_ADC_IDATAR3, 0x40012444 	#ADC injected data register 3 0x00000000
.equ R32_ADC_IDATAR4, 0x40012448 	#ADC injected data register 4 0x00000000
.equ R32_ADC_RDATAR, 0x4001244C 	#ADC regular data register 0x00000000
.equ R32_ADC_DLYR, 0x40012450 	#ADC delayed data register


.equ R16_TIM1_CTLR1, 0x40012C00 	#Control register 1 0x0000
.equ R16_TIM1_CTLR2, 0x40012C04 	#Control register 2 0x0000
.equ R16_TIM1_SMCFGR, 0x40012C08 	#Slave mode control register 0x0000
.equ R16_TIM1_DMAINTENR, 0x40012C0C 	#DMA/interrupt enable register 0x0000
.equ R16_TIM1_INTFR, 0x40012C10 	#Interrupt status register 0x0000
.equ R16_TIM1_SWEVGR, 0x40012C14 	#Event generation register 0x0000
.equ R16_TIM1_CHCTLR1, 0x40012C18 	#Compare/capture control register 1 0x0000
.equ R16_TIM1_CHCTLR2, 0x40012C1C 	#Compare/capture control register 2 0x0000
.equ R16_TIM1_CCER, 0x40012C20 	#Compare/capture enable register 0x0000
.equ R16_TIM1_CNT, 0x40012C24 	#Counters 0x0000
.equ R16_TIM1_PSC, 0x40012C28 	#Counting clock prescaler 0x0000
.equ R16_TIM1_ATRLR, 0x40012C2C 	#Auto-reload value register 0x0000
.equ R16_TIM1_RPTCR, 0x40012C30 	#Recurring count value register 0x0000
.equ R16_TIM1_CH1CVR, 0x40012C34 	#Compare/capture register 1 0x0000
.equ R16_TIM1_CH2CVR, 0x40012C38 	#Compare/capture register 2 0x0000
.equ R16_TIM1_CH3CVR, 0x40012C3C 	#Compare/capture register 3 0x0000
.equ R16_TIM1_CH4CVR, 0x40012C40 	#Compare/capture register 4 0x0000
.equ R16_TIM1_BDTR, 0x40012C44 	#Brake and deadband registers 0x0000
.equ R16_TIM1_DMACFGR, 0x40012C48 	#DMA control register 0x0000
.equ R16_TIM1_DMAADR, 0x40012C4C 	#DMA address register for continuous mode


.equ R16_TIM2_CTLR1, 0x40000000 	#TIM2 control register1 0x0000
.equ R16_TIM2_CTLR2, 0x40000004 	#TIM2 control register2 0x0000
.equ R16_TIM2_SMCFGR, 0x40000008 	#TIM2 Slave mode control register 0x0000
.equ R16_TIM2_DMAINTENR, 0x4000000C 	#TIM2 DMA/interrupt enable register
.equ R16_TIM2_INTFR, 0x40000010 	#TIM2 interrupt status register 0x0000
.equ R16_TIM2_SWEVGR, 0x40000014 	#TIM2 event generation register 0x0000
.equ R16_TIM2_CHCTLR1, 0x40000018 	#TIM2 compare/capture control register1 0x0000
.equ R16_TIM2_CHCTLR2, 0x4000001C 	#TIM2 compare/capture control register2 0x0000
.equ R16_TIM2_CCER, 0x40000020 	#TIM2 compare/capture enable register 0x0000
.equ R16_TIM2_CNT, 0x40000024 	#TIM2 counter 0x0000
.equ R16_TIM2_PSC, 0x40000028 	#TIM2 count clock prescaler 0x0000
.equ R16_TIM2_ATRLR, 0x4000002C 	#TIM2 auto-reload register 0x0000
.equ R16_TIM2_CH1CVR, 0x40000034 	#TIM2 compare/capture register1 0x0000
.equ R16_TIM2_CH2CVR, 0x40000038 	#TIM2 compare/capture register2 0x0000
.equ R16_TIM2_CH3CVR, 0x4000003C 	#TIM2 compare/capture register3 0x0000
.equ R16_TIM2_CH4CVR, 0x40000040 	#TIM2 compare/capture register4 0x0000
.equ R16_TIM2_DMACFGR, 0x40000048 	#TIM2 DMA control register 0x0000
.equ R16_TIM2_DMAADR, 0x4000004C 	#TIM2 DMA address register in continuous mode
  

.equ R32_USART_STATR, 0x40013800 	#UASRT status register 0x000000C0
.equ R32_USART_DATAR, 0x40013804 	#UASRT data register 0x000000XX
.equ R32_USART_BRR, 0x40013808 	#UASRT baud rate register 0x00000000
.equ R32_USART_CTLR1, 0x4001380C 	#UASRT control register 1 0x00000000
.equ R32_USART_CTLR2, 0x40013810 	#UASRT control register 2 0x00000000
.equ R32_USART_CTLR3, 0x40013814 	#UASRT control register 3 0x00000000
.equ R32_USART_GPR, 0x40013818 	#UASRT protection time and prescaler register


.equ R16_I2C_CTLR1, 0x40005400 	#I2C control register 1 0x0000
.equ R16_I2C_CTLR2, 0x40005404 	#I2C control register 2 0x0000
.equ R16_I2C_OADDR1, 0x40005408 	#I2C address register 1 0x0000
.equ R16_I2C_OADDR2, 0x4000540C 	#I2C address register 2 0x0000
.equ R16_I2C_DATAR,  0x40005410 	#I2C data register 0x0000
.equ R16_I2C_STAR1,  0x40005414 	#I2C status register 1 0x0000
.equ R16_I2C_STAR2,  0x40005418 	#I2C status register 2 0x0000
.equ R16_I2C_CKCFGR, 0x4000541C 	#I2C clock register

.equ R16_SPI_CTLR1, 0x40013000 	#SPI Control register1 0x0000
.equ R16_SPI_CTLR2, 0x40013004 	#SPI Control register2 0x0000
.equ R16_SPI_STATR, 0x40013008 	#SPI Status register 0x0002
.equ R16_SPI_DATAR, 0x4001300C 	#SPI Data register 0x0000
.equ R16_SPI_CRCR,  0x40013010 	#SPI Polynomial register 0x0007
.equ R16_SPI_RCRCR, 0x40013014 	#SPI Receive CRC register 0x0000
.equ R16_SPI_TCRCR, 0x40013018 	#SPI Transmit CRC register 0x0000
.equ R16_SPI_HSCR,  0x40013024 	#SPI High-speed control register

.equ R16_ESIG_FLACAP, 0x1FFFF7E0 	#Flash capacity register 0xXXXX
.equ R32_ESIG_UNIID1, 0x1FFFF7E8 	#UID register 1 0xXXXXXXXX
.equ R32_ESIG_UNIID2, 0x1FFFF7EC 	#UID register 2 0xXXXXXXXX
.equ R32_ESIG_UNIID3,  0x1FFFF7F0 	#UID register 3 

.equ R32_FLASH_ACTLR, 0x40022000 	#Control register
.equ R32_FLASH_KEYR,  0x40022004 	#FPEC key register X
.equ R32_FLASH_OBKEYR, 0x40022008 	#OBKEY register X
.equ R32_FLASH_STATR, 0x4002200C 	#Status register 0x00008000
.equ R32_FLASH_CTLR,  0x40022010 	#Configuration register 0x00008080
.equ R32_FLASH_ADDR, 0x40022014 	#Address register X
.equ R32_FLASH_OBR,  0x4002201C 	#Select word register 0x03FFFFFE
.equ R32_FLASH_WPR,  0x40022020 	#Write protection register 0xFFFFFFF
.equ R32_FLASH_MODEKEYR,  0x40022024 	#Extended key register X
.equ R32_FLASH_BOOT_MODEKEYR,  0x40022028 #Unlock BOOT key register

.equ R32_EXTEN_CTR, 0x40023800 	#Configure extended control registers

.equ PFIC_KEY1, 0xFA050000
.equ PFIC_KEY2, 0xBCAF0000
.equ PFIC_KEY3, 0xBEEF0000
.equ mstatus, 0x300
.equ mtvec, 0x305
.equ intsyscr, 0x804
.equ mepc, 0x341

.equ  SYSTICK_SR_CNTIF, (1<<0)
.equ  SYSTICK_CTLR_STE , (1<<0)
.equ  SYSTICK_CTLR_STIE, (1<<1)
.equ  SYSTICK_CTLR_STCLK, (1<<2)
.equ  SYSTICK_CTLR_STRE,  (1<<3)
.equ  SYSTICK_CTLR_SWIE, (1<<31) 


.align 9
vtable:
  j start		#  longs 0x00000000 # RESERVED 0
.align 2
  .word   0x00000000 # RESERVED 1
  .word   NMI_IRQhandler
  .word   HardFault_IRQhandler
  .word   0x00000000 # RESERVED 4
  .word   0x00000000 # RESERVED 5
  .word   0x00000000 # RESERVED 6
  .word   0x00000000 # RESERVED 7
  .word   0x00000000 # RESERVED 8
  .word   0x00000000 # RESERVED 9
  .word   0x00000000 # RESERVED 10
  .word   0x00000000 # RESERVED 11
  .word   SysTick_IRQhandler	#; place the address of the mtime ISR subroutine in the vector table position 7,assembler will store isr address here, longs 0x00000000 # RESERVED 12	
  .word   0x00000000 # RESERVED 13
  .word   SW_Software_IRQhandler
  .word   0x00000000 # RESERVED 15
  .word   WWDG_IRQhandler
  .word   PVD_IRQhandler
  .word   FLASH_IRQhandler
  .word   RCC_IRQhandler
  .word   EXTI7_0_IRQhandler
  .word   AWU_IRQhandler
  .word   DMA1_CH1_IRQhandler
  .word   DMA1_CH2_IRQhandler
  .word   DMA1_CH3_IRQhandler
  .word   DMA1_CH4_IRQhandler
  .word   DMA1_CH5_IRQhandler
  .word   DMA1_CH6_IRQhandler
  .word   DMA1_CH7_IRQhandler
  .word  ADC1_IRQhandler				# ADC1 interrupt vector
  .word  I2C1_EV_IRQhandler
  .word  I2C1_ER_IRQhandler
  .word  USART1_IRQhandler
  .word  SPI1_IRQhandler
  .word  TIM1BRK_IRQhandler
  .word  TIM1UP_IRQhandler
  .word  TIM1TRG_COM_IRQhandler
  .word  TIM1CC_IRQhandler
  .word  TIM2_IRQhandler



.text
.section .isr_vectors
  .weak   NMI_IRQhandler
  .weak   HardFault_IRQhandler
  .weak   SysTick_IRQhandler	#; place the address of the mtime ISR subroutine in the vector table position 7,assembler will store isr address here, longs 0x00000000 # RESERVED 12	
  .weak   SW_Software_IRQhandler
  .weak   WWDG_IRQhandler
  .weak   PVD_IRQhandler
  .weak   FLASH_IRQhandler
  .weak   RCC_IRQhandler
  .weak   EXTI7_0_IRQhandler
  .weak   AWU_IRQhandler
  .weak   DMA1_CH1_IRQhandler
  .weak   DMA1_CH2_IRQhandler
  .weak   DMA1_CH3_IRQhandler
  .weak   DMA1_CH4_IRQhandler
  .weak   DMA1_CH5_IRQhandler
  .weak   DMA1_CH6_IRQhandler
  .weak   DMA1_CH7_IRQhandler
  .weak  ADC1_IRQhandler				# ADC1 interrupt vector
  .weak  I2C1_EV_IRQhandler
  .weak  I2C1_ER_IRQhandler
  .weak  USART1_IRQhandler
  .weak  SPI1_IRQhandler
  .weak  TIM1BRK_IRQhandler
  .weak  TIM1UP_IRQhandler
  .weak  TIM1TRG_COM_IRQhandler
  .weak  TIM1CC_IRQhandler
  .weak  TIM2_IRQhandler


.align 2
.text
.global start
start:

    	li sp, STACK			# load stack pointer with stack end address
	 
    	la t0, vtable			#BASEADDR[31:2],The interrupt vector table base address,which needs to be 1KB aligned
    	ori t0, t0, 3			#BASEADDR[31:2],1: Identify by absolute address,1: Address offset based on interrupt number *4
    	csrrw zero, mtvec,t0		# write t0 mtvec
   	la t0,main
	csrw	mepc,t0
          				#csrw	mepc,t0 :mepc updated with address of main
	mret

  
.align 4

# Main program
main:
    # Enable GPIO and other peripherals
    	la x10, R32_RCC_APB2PCENR
    	lw x11, 0(x10)
    	li x7, ((1 << 2) | (1 << 4) | (1 << 5) | (1 << 0))  # Enable GPIOA, GPIOC, GPIOD, AFIO
    	or x11, x11, x7
    	sw x11, 0(x10)

 	la x10,R32_GPIOD_CFGLR		# load address of R32_GPIOD_CFGLR , GPIO cfg register
	lw x11,0(x10)			# load contents from register pointed by x10
	li x7,~(0xf<<16)		# clear PD4, config & modebits  ~(0xF<<16)
	and x11,x11,x7			# clear pd4 mode and cnf bits for selected pin D4 
	li x7,(3<<16)		 	# push/pull  = 0011 (0x3) for PD4
	or x11,x11,x7			# OR value to register
	sw x11,0(x10)			# store in R32_GPIOD_CFGLR


	la x10,R32_GPIOD_BSHR		# R32_GPIOD_BSHR register sets and resets GPIOD pins, 
	lw x11,0(x10)			# load contents to x11
	li x7,(1<<4)			# set pd4 by shifting 1 to bit position 4
	or x11,x11,x7			# OR with x11
	sw x11,0(x10)			# store x11 to R32_GPIOD_BSHR ,NOW LED REMAINS OFF on PD4

   	la x10, R32_RCC_APB1PCENR
    	lw x11, 0(x10)
    	li x7, (1 << 28)  		# Enable power interface module
    	or x11, x11, x7
    	sw x11, 0(x10)

# Enable LSI and wait for it to stabilize
    	la x10, R32_RCC_RSTSCKR
    	lw x11, 0(x10)
    	li x7, (1 << 0)  		# Set LSION
   	or x11, x11, x7
    	sw x11, 0(x10)

wait_lsi_ready:
    	lw x11, 0(x10)
    	andi x11, x11, (1 << 1)  	# Check LSIRDY
    	beqz x11, wait_lsi_ready


	call delay			# long delay to reprogram the chip before it sleeps
	call delay
	call delay
	call delay
	call delay
	call delay
	call delay
	call delay
	call delay

###############
	la x10,R32_EXTI_INTENR		# EXTI Interrupt Enable register
	lw x11,0(x10)			# load contents of register pointed by x10 to x11
	li x7,(1<<9)			# R32_EXTI_INTENR = 1<<9 , shift 1 to bit9 for EXTI9  
	or x11,x11,x7 			# or selected value to x11
	sw x11,0(x10)			# store is register R32_EXTI_INTENR

	la x10,R32_EXTI_FTENR		# Interrupt Enable for falling edge to be set in exti 
	lw x11,0(x10)
	li x7,(1<<9)			# falling edge triggers interrupt on PD0
	or x11,x11,x7
	sw x11,0(x10)			# store values in R32_EXTI_FTENR

	

PFIC_CONFIG:				# configure Controller to take interrupts from EXTI
	la x10,R32_PFIC_CFGR		# reset core PFIC register for interrupts
	lw x11,0(x10)
	li x7,((PFIC_KEY3<<16)|(1<<7))	# key3  and SYSRESET , reference manual tells to do it
	or x11,x11,x7
	sw x11,0(x10)			# store back new values

	la x10,R32_PFIC_IENR1		# PFIC Interrupt Enable in core PFIC
	lw x11,0(x10)
	li x7,(1<<21 )			# enabled  AWU interrupt 21 of vector table
	or x11,x11,x7
	sw x11,0(x10)			# store back new values


# Set AWU window value and prescaler ,time = AWUWR / (fLSI / AWUPSC),AWUWR can be 1 to 63, fLSI is always 128000 and AWUPSC, practically is 2048, 4096, 10240 or 61440.
    	la x10, R32_PWR_AWUWR		# load address of R32_PWR_AWUWR
    	li x7, 0x20  			# Wakeup time 0-63 possible values , current 32
    	sw x7, 0(x10)
    	la x10, R32_PWR_AWUPSC		# load address R32_PWR_AWUPSC , prescaler register
    	li x7, 0x0D  # Prescaler	# prescaler value 0X0D = 4096
    	sw x7, 0(x10)


# Enable Auto-Wakeup
    	la x10, R32_PWR_AWUCSR
    	lw x11, 0(x10)
    	li x7, (1 << 1)  		# Set AWUEN , enable auto wake up of core
    	or x11, x11, x7
    	sw x11, 0(x10)


# Enable deep sleep mode
    	la x10, R32_PWR_CTLR        	# Load address of PWR_CTLR register
	lw x11, 0(x10)              	# Load current value of PWR_CTLR
	li x7, (1 << 1)             	# Set PDDS bit (Power Down Deep Sleep)
	or x11, x11, x7             	# OR the value
	sw x11, 0(x10)              	# Store back to PWR_CTLR


#enable deep sleep and SLEEPONEXIT
	la x10,R32_PFIC_SCTLR		# load address of PFIC system control register
	lw x11, 0(x10)			# copy contents
	li x7, ((1 << 2) | (1 << 1))    # Set SLEEPDEEP and SLEEPONEXIT bits (sleeponexit puts core in sleep after exiting ISR ,stand by mode needs manual enable each time)
	or x11, x11, x7 		# OR the value
	sw x11, 0(x10)			# store back to PFIC system register



# enabling GLOBAL INTERRUPTS
	li t0, 0x88			# load MPIE and MIE bits , 1<<MIE enabling interrupts
	csrw	mstatus,t0 		#  



###############	



    
# Main loop
vvvv:
    	wfi
    	j vvvv  # Loop back to standby

########################

# Delay subroutine
delay:
    	addi sp, sp, -8
   	sw ra, 0(sp)
    	sw x6, 4(sp)
    	li x6, 200000  			# 200ms approx delay
dloop:
    	addi x6, x6, -1
    	bne x6, zero, dloop
    	lw x6, 4(sp)
    	lw ra, 0(sp)
    	addi sp, sp, 8
    	ret

#############################################################
# Auto wake up ISR
#############################################################

AWU_IRQhandler:
	addi sp,sp,-60    		# push all registers
	sw x15,56(sp)
	sw x14,52(sp)
	sw x13,48(sp)
	sw x12,44(sp)
	sw x11,40(sp)
	sw x10,36(sp)
	sw x9,32(sp)
	sw x8,28(sp)
	sw x7,24(sp)
	sw x6,20(sp)
	sw x5,16(sp)
	sw x4,12(sp)
	sw x3,8(sp)
	sw x2,4(sp)
	sw x1,0(sp)
	
###########
	la x10,R32_EXTI_INTFR		# Interrupt flag register
	lw x11,0(x10)			# load contents of R32_EXTI_INTFR to x11 
	li x7,(1<<9)			# writing 1 clears the flag , write 1 at bit9 to clear current flag
	or x11,x11,x7			# or 1<<9
	sw x11,0(x10)			# store 1<<9 in R32_EXTI_INTFR
	la x10,R32_PFIC_IPRR1		# PFIC interrupt pending clear register 1
	li x7,(1<<21)			# clear pending bit for interrupt 21 (EXTI9/AWU)
	sw x7,0(x10)			# store 1<<21 in PFIC_IPRR1	
############		
	la x10,R32_GPIOD_BSHR		# R32_GPIOD_BSHR register sets and resets GPIOD pins
	lw x11,0(x10)			# load contents to x11
	li x7,(1<<20)			# reset pd4 by shifting 1 into bit position 20 
	or x11,x11,x7			# OR with x11
	sw x11,0(x10)			# store x11 to R32_GPIOD_BSHR
	
	call delay			# long delay

	la x10,R32_GPIOD_BSHR		# R32_GPIOD_BSHR register sets and resets GPIOD pins, 
	lw x11,0(x10)			# load contents to x11
	li x7,(1<<4)			# set pd4 by shifting 1 to bit position 4
	or x11,x11,x7			# OR with x11
	sw x11,0(x10)			# store x11 to R32_GPIOD_BSHR
############
	lw x1,0(sp)
	lw x2,4(sp)
	lw x3,8(sp)
	lw x4,12(sp)
	lw x5,16(sp)
	lw x6,20(sp)
	lw x7,24(sp)
	lw x8,28(sp)
	lw x9,32(sp)
	lw x10,36(sp)
	lw x11,40(sp)
	lw x12,44(sp)
	lw x13,48(sp)
	lw x14,52(sp)
	lw x15,56(sp)
	addi sp,sp,60
	mret				# return from interrupt 




