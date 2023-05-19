#include "xgpio.h"
#include "xparameters.h"
#include "DCC.h"
#include "SS.h"
#include "xil_io.h"

int main()
{
// Componant GPIO
	XGpio sw_btn, led;

// Inisialization of the ports
	XGpio_Initialize(&sw_btn, XPAR_SW_BTN_DEVICE_ID);
	XGpio_Initialize(&led, XPAR_LED_DEVICE_ID);

// Set sw bp to input & led to output
	XGpio_SetDataDirection(&sw_btn,1,1);
	XGpio_SetDataDirection(&sw_btn,2,1);
	XGpio_SetDataDirection(&led,1,0);

	unsigned int debug1, debug2;

	int sept_seg;

// stat of btn
	int stat_btn = 0;
	int stat_btn_pre = 0;

// Trame parts
	int command0 = 0;
	int command1 = 0;
	int xor_command = 0;
	long long trame = 0;
	int trame0 = 0;
	int trame1 = 0;

// LED
	// LED trigger
	// 0 - 3  Function changing speed
	// 0, 1, 3  Function F0 - F20
	int led_index = 0;
	int led_value = 0;

	// Each Part led setting :
	// Part 0 : function type
	// Function changing speed  0
	// Function F0 - F20  1-21
	int led_setting0 = 0;
	// Part 1 : train address
	int led_setting1 = 1;
	// Part 2 : train direction
	int led_setting2 = 0;
	// Part 3 : speed setting or ONOFF
	int led_setting3 = 0;

	while(1)
	{
		stat_btn = XGpio_DiscreteRead(&sw_btn, 2);

		if ((stat_btn & 0x1) != (stat_btn_pre & 0x1) && (stat_btn & 0x1) == 1){  					// Btn C pressed

			// Function changings speed
			if (led_setting0 == 0){
				command0 = 0x40 + ((led_setting2 & 0x1)<<5) + led_setting3;
				xor_command = led_setting1 ^ command0;
				trame = 0x1 + (xor_command<<1) + (command0<<10) + (led_setting1<<19) + 0x7FFFFF0000000;
			}

			// Function F0-F4
			else if (led_setting0 >= 1 && led_setting0 <= 5){

				if (led_setting0 == 1){ 												// F0
					if (led_setting3 == 1){
						command0 = 0x80 + 0x10;
					}else{
						command0 = 0x80;
					}
				}else if (led_setting0 == 2){ 											// F1
					if (led_setting3 == 1){
						command0 = 0x80 + 0x01;
					}else{
						command0 = 0x80;
					}
				}else if (led_setting0 == 3){ 											// F2
					if (led_setting3 == 1){
						command0 = 0x80 + 0x02;
					}else{
						command0 = 0x80;
					}
				}else if (led_setting0 == 4){ 											// F3
					if (led_setting3 == 1){
						command0 = 0x80 + 0x04;
					}else{
						command0 = 0x80;
					}
				}else if (led_setting0 == 5){ 											// F4
					if (led_setting3 == 1){
						command0 = 0x80 + 0x08;
					}else{
						command0 = 0x80;
					}
				}
				xor_command = led_setting1 ^ command0;
				trame = 0x1 + (xor_command<<1) + (command0<<10) + (led_setting1<<19) + 0x7FFFFF0000000;
			}

			// Function F5-12
			else if (led_setting0 >= 6 && led_setting0 <= 13){

				if (led_setting0 == 6){ 												// F5
					if (led_setting3 == 1){
						command0 = 0xB0 + 0x01;
					}else{
						command0 = 0xB0;
					}
				}else if (led_setting0 == 7){ 											// F6
					if (led_setting3 == 1){
						command0 = 0xB0 + 0x02;
					}else{
						command0 = 0xB0;
					}
				}else if (led_setting0 == 8){ 											// F7
					if (led_setting3 == 1){
						command0 = 0xB0 + 0x04;
					}else{
						command0 = 0xB0;
					}
				}else if (led_setting0 == 9){ 											// F8
					if (led_setting3 == 1){
						command0 = 0xB0 + 0x08;
					}else{
						command0 = 0xB0;
					}
				}else if (led_setting0 == 10){ 											// F9
					if (led_setting3 == 1){
						command0 = 0xA0 + 0x01;
					}else{
						command0 = 0xA0;
					}
				}else if (led_setting0 == 11){ 											// F10
					if (led_setting3 == 1){
						command0 = 0xA0 + 0x02;
					}else{
						command0 = 0xA0;
					}
				}else if (led_setting0 == 12){ 											// F11
					if (led_setting3 == 1){
						command0 = 0xA0 + 0x04;
					}else{
						command0 = 0xA0;
					}
				}else if (led_setting0 == 13){ 											// F12
					if (led_setting3 == 1){
						command0 = 0xA0 + 0x08;
					}else{
						command0 = 0xA0;
					}
				}
				xor_command = led_setting1 ^ command0;
				trame = 0x1 + (xor_command<<1) + (command0<<10) + (led_setting1<<19) + 0x7FFFFF0000000;
			}

			// Function F13-20
			else if (led_setting0 >= 14 && led_setting0 <= 21){

				command1 = 0xDE;
				if (led_setting0 == 14){ 												// F13
					if (led_setting3 == 1){
						command0 = 0x01;
					}else{
						command0 = 0x0;
					}
				}else if (led_setting0 == 15){ 											// F14
					if (led_setting3 == 1){
						command0 = 0x02;
					}else{
						command0 = 0x0;
					}
				}else if (led_setting0 == 16){ 											// F15
					if (led_setting3 == 1){
						command0 = 0x04;
					}else{
						command0 = 0x0;
					}
				}else if (led_setting0 == 17){ 											// F16
					if (led_setting3 == 1){
						command0 = 0x08;
					}else{
						command0 = 0x0;
					}
				}else if (led_setting0 == 18){ 											// F17
					if (led_setting3 == 1){
						command0 = 0x10;
					}else{
						command0 = 0x0;
					}
				}else if (led_setting0 == 19){ 											// F18
					if (led_setting3 == 1){
						command0 = 0x20;
					}else{
						command0 = 0x0;
					}
				}else if (led_setting0 == 20){ 											// F19
					if (led_setting3 == 1){
						command0 = 0x40;
					}else{
						command0 = 0x0;
					}
				}else if (led_setting0 == 21){ 											// F20
					if (led_setting3 == 1){
						command0 = 0x88;
					}else{
						command0 = 0x0;
					}
				}
				xor_command = led_setting1 ^ command0 ^ command1;
				trame = 0x1 + (xor_command<<1) + (command0<<10) + (command1<<19) + (led_setting1<<28) + 0x7FFE000000000;
			}

			// Send the trame
			// Trame_DCC <=  slv_reg1(18 downto 0) & slv_reg0;
			trame0 = trame & 0xFFFFFFFF;
			trame1 = (trame>>32) & 0x0007FFFF;

			DCC_mWriteReg(XPAR_DCC_0_S00_AXI_BASEADDR, DCC_S00_AXI_SLV_REG0_OFFSET, trame0);
			DCC_mWriteReg(XPAR_DCC_0_S00_AXI_BASEADDR, DCC_S00_AXI_SLV_REG1_OFFSET, trame1);
			debug1 = DCC_mReadReg(XPAR_DCC_0_S00_AXI_BASEADDR, DCC_S00_AXI_SLV_REG0_OFFSET);
			debug2 = DCC_mReadReg(XPAR_DCC_0_S00_AXI_BASEADDR, DCC_S00_AXI_SLV_REG1_OFFSET);

		}
		if ((stat_btn>>1 & 0x1) != (stat_btn_pre>>1 & 0x1) && (stat_btn>>1 & 0x1) == 1){  	// Btn U pressed
			if (led_index == 0) {
				if (led_setting0 < 22){// Part 0
					led_setting0 = led_setting0 + 1;
					led_setting2 = 0;
					led_setting3 = 0;
				}
			}else if (led_index == 1){// Part 1
				if (led_setting1 < 6){
					led_setting1 = led_setting1 + 1;
				}
			}else if (led_index == 2){
				if (led_setting2 == 0){
					led_setting2 = 1;
				}
			}else if (led_index == 3){
				if (led_setting0 == 0){
					if (led_setting3 < 31){
						led_setting3 = led_setting3 + 1;
					}
				}else{
					if (led_setting3 == 0){
						led_setting3 = 1;
					}
				}
			}
		}
		if ((stat_btn>>2 & 0x1) != (stat_btn_pre>>2 & 0x1) && (stat_btn>>2 & 0x1) == 1){  	// Btn L pressed
			if (led_index == 3 && led_setting0 == 0) {
				led_index = 2;
			}else if (led_index == 3 && led_setting0 != 0){
				led_index = 1;
			}else if (led_index == 2){
				led_index = 1;
			}else if (led_index == 1){
				led_index = 0;
			}
		}
		if ((stat_btn>>3 & 0x1) != (stat_btn_pre>>3 & 0x1) && (stat_btn>>3 & 0x1) == 1){  	// Btn R pressed
			if (led_index == 0) {
				led_index = 1;
			}else if (led_index == 1 && led_setting0 == 0){
				led_index = 2;
			}else if (led_index == 1 && led_setting0 != 0){
				led_index = 3;
			}else if (led_index == 2){
				led_index = 3;
			}
		}
		if ((stat_btn>>4 & 0x1) != (stat_btn_pre>>4 & 0x1) && (stat_btn>>4 & 0x1) == 1){  	// Btn D pressed
			if (led_index == 0) {
				if (led_setting0 > 0){
					led_setting0 = led_setting0 - 1;
					led_setting2 = 0;
					led_setting3 = 0;
				}
			}else if (led_index == 1){
				if (led_setting1 > 0){
					led_setting1 = led_setting1 - 1;
				}
			}else if (led_index == 2){
				if (led_setting2 == 1){
					led_setting2 = 0;
				}
			}else if (led_index == 3){
				if (led_setting0 == 0){
					if (led_setting3 > 0){
						led_setting3 = led_setting3 - 1;
					}
				}else{
					if (led_setting3 == 1){
						led_setting3 = 0;
					}
				}
			}
		}

		for(int i = 0; i < 750000; ) {
			i = i + 1;
		}
		stat_btn_pre = stat_btn;
		led_value = (led_setting3<<1) + (led_setting2<<7) + (led_setting1<<8) + (led_setting0<<11);
		XGpio_DiscreteWrite(&led, 1, led_value & 0xFFFF);

		if (led_setting0 == 0){
			sept_seg = 1;
		}
		else {
			sept_seg = 0;
		}

		if (led_index == 0){
			sept_seg += (led_index << 1) + (led_setting0 << 3);
		}else if (led_index == 1){
			sept_seg += (led_index << 1) + (led_setting1 << 3);
		}else if (led_index == 2){
			sept_seg += (led_index << 1) + (led_setting2 << 3);
		}else if (led_index == 3){
			sept_seg += (led_index << 1) + (led_setting3 << 3);
		}
		SS_mWriteReg(XPAR_SS_0_S00_AXI_BASEADDR, SS_S00_AXI_SLV_REG3_OFFSET, sept_seg);

	}
	return 0;
}
