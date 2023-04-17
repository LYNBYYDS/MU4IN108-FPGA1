#include "xgpio.h"
#include "xparameters.h"
#include "IP_Centrale_DCC.h"
#include "xil_io.h"


// Trame parts
	int address = 1;
	int command0 = 0;
	int command1 = 0;
	int xor_command = 0;
	long trame = 0;


// Function type
	// Function changeing speed : 0
	// Function F0-F4			: 1
	// Function F5-F12			: 2
	// Function F13-F20			: 3
		int type_Function = 0;

	// Function changing speed
		int index_Train = 1;
		int direction_Train = 1;
		int speed_Train = 0;

	// Function F0-F4
		int F0_ON = 0;
		int F1_ON = 0;
		int F2_ON = 0;
		int F3_ON = 0;
		int F4_ON = 0;

	// Function F5-F12
		int F5_ON = 0;
		int F6_ON = 0;
		int F7_ON = 0;
		int F8_ON = 0;
		int F9_ON = 0;
		int F10_ON = 0;
		int F11_ON = 0;
		int F12_ON = 0;

	// Function F13-F20
		int F13_ON = 0;
		int F14_ON = 0;
		int F15_ON = 0;
		int F16_ON = 0;
		int F17_ON = 0;
		int F18_ON = 0;
		int F19_ON = 0;
		int F20_ON = 0;

// LED
	// LED trigger
		// 0 - 3 : Function changing speed
		// 0, 1, 3 : Function F0 - F20
		int LED_index = 0;
		int led_value = 0;

	// Each led setting
		// Setting0 : function type
		// Function changing speed : 0
		// Function F0 - F20 : 1-21
		int led_setting0 = 0;
		int if_show_LED0 = 1;
		// Setting1 : train address
		int led_setting1 = 1;
		int if_show_LED1 = 1;
		// Setting2 : train direction
		int led_setting2 = 1;
		int if_show_LED2 = 1;
		// Setting3 : speed setting or ON/OFF
		int led_setting3 = 0;
		int if_show_LED3 = 1;

// Function press left button
	void pressLeftButton()
	{
		if (type_Function == 0)				// Function changing speed
		{
			if (LED_index != 0)
			{
				LED_index --;
			}
		}
		else
		{
			if (LED_index != 0 && LED_index != 3)
			{
				LED_index --;
			}
			else if (LED_index == 3)
			{
				LED_index = 1;
			}
		}
	}

// Function press right button
	void pressRightButton()
	{
		if (type_Function == 3)				// Function changing speed
		{
			if (LED_index != 3)
			{
				LED_index ++;
			}
		}
		else
		{
			if (LED_index != 1 && LED_index != 3)
			{
				LED_index --;
			}
			else if (LED_index == 1)
			{
				LED_index = 3;
			}
		}
	}

// Function press up button
	void pressUpButton()
	{
		switch (LED_index)
		{
			case 0 : // Function type
				if (led_setting0 < 21 && led_setting0 >= 1)
				{
					led_setting0 ++;
					rechargeled();
				}
				else if (led_setting0 == 21)
				{}
				else
				{
					showbug();
				}

				// change Function type when need
				if (led_setting0 == 1)	// Pass to F0-F4
				{
					type_Function = 1;
				}
				else if (led_setting0 == 6) // Pass to F5-12
				{
					type_Function = 2;
				}
				else if (led_setting0 == 14) // Pass to F13-20
				{
					type_Function = 3;
				}
				break;

			case 1 : // Train address
				if (led_setting1 >= 0 && led_setting1 < 3)
				{
					led_setting1 ++;
					index_Train ++;
				}
				else if (led_setting1 == 3)
				{}
				else
				{
					showbug();
				}
				break;

			case 2 : // direction of the train
				if (led_setting2 == 0)
				{
					led_setting2 = 1;
					direction_Train = 1;
				}
				else if (led_setting2 == 1)
				{}
				else
				{
					showbug();
				}
				break;

			case 3 : // speed or ON/OFF
				if (type_Function == 0)
				{
					if (led_setting3 >= 0 && led_setting3 <= 30)		// Normal case just add speed
					{
						led_setting3 ++;
						speed_Train ++;
					}
				}
				else if (type_Function > 0 && type_Function <= 3)		// Switch ON/OFF
				{
					if (led_setting3 == 0)
					{
						led_setting3 = 1;
						switchFunction(1, led_setting0);
					}
					else if (led_setting3 == 1)
					{}
					else
					{
						showbug();
					}
				}
				break;

			default :
				NULL;
		}
	}

// Function press down button
	void pressDownButton()
	{
		switch (LED_index)
		{
			case 0 : // Function type
				if (led_setting0 <= 21 && led_setting0 > 1)
				{
					led_setting0 --;
					rechargeled();
				}
				else if (led_setting0 == 0)
				{}
				else
				{
					showbug();
				}

				// change Function type when need
				if (led_setting0 == 13)	// Pass to F5-12
				{
					type_Function = 2;
				}
				else if (led_setting0 == 5) // Pass to F0-F4
				{
					type_Function = 1;
				}
				else if (led_setting0 == 0) // Pass to function changing speed
				{
					type_Function = 0;
				}
				break;

			case 1 : // Train address
				if (led_setting1 > 0 && led_setting1 <= 3)
				{
					led_setting1 --;
					index_Train --;
				}
				else if (led_setting1 == 0)
				{}
				else
				{
					showbug();
				}
				break;

			case 2 : // direction of the train
				if (led_setting2 == 1)
				{
						led_setting2 = 0;
						direction_Train = 0;
				}
				else if (led_setting2 == 0)
				{}
				else
				{
					showbug();
				}
				break;

			case 3 : // speed or ON/OFF
				if (type_Function == 0)
				{
					if (led_setting3 > 0 && led_setting3 <= 31)		// Normal case just decrease speed
					{
						led_setting3 --;
						speed_Train --;
					}
				}
				else if (type_Function > 0 && type_Function <= 3)		// Switch ON/OFF
				{
					if (led_setting3 == 1)
					{
						led_setting3 = 0;
						switchFunction(0, led_setting0);
					}
					else if (led_setting3 == 0)
					{}
					else
					{
						showbug();
					}
				}
				break;

			default :
				NULL;
		}
	}

// Function recharge led when change function
	void rechargeled()
	{
		switch (led_setting0)
		{
			case 0 :
				if_show_LED2 = 1;
				led_setting2 = direction_Train;
				led_setting3 = speed_Train;
				break;

			case 1 :
				if_show_LED2 = 0;
				if (F0_ON)
				{
					led_setting3 = 1;
				}
				else if (!F0_ON)
				{
					led_setting3 = 0;
				}
				break;

			case 2 :
				if_show_LED2 = 0;
				if (F1_ON)
				{
					led_setting3 = 1;
				}
				else if (!F1_ON)
				{
					led_setting3 = 0;
				}
				break;

			case 3 :
				if_show_LED2 = 0;
				if (F2_ON)
				{
					led_setting3 = 1;
				}
				else if (!F2_ON)
				{
					led_setting3 = 0;
				}
				break;

			case 4 :
				if_show_LED2 = 0;
				if (F3_ON)
				{
					led_setting3 = 1;
				}
				else if (!F3_ON)
				{
					led_setting3 = 0;
				}
				break;

			case 5 :
				if_show_LED2 = 0;
				if (F4_ON)
				{
					led_setting3 = 1;
				}
				else if (!F4_ON)
				{
					led_setting3 = 0;
				}
				break;

			case 6 :
				if_show_LED2 = 0;
				if (F5_ON)
				{
					led_setting3 = 1;
				}
				else if (!F5_ON)
				{
					led_setting3 = 0;
				}
				break;

			case 7 :
				if_show_LED2 = 0;
				if (F6_ON)
				{
					led_setting3 = 1;
				}
				else if (!F6_ON)
				{
					led_setting3 = 0;
				}
				break;

			case 8 :
				if_show_LED2 = 0;
				if (F7_ON)
				{
					led_setting3 = 1;
				}
				else if (!F7_ON)
				{
					led_setting3 = 0;
				}
				break;

			case 9 :
				if_show_LED2 = 0;
				if (F8_ON)
				{
					led_setting3 = 1;
				}
				else if (!F8_ON)
				{
					led_setting3 = 0;
				}
				break;

			case 10 :
				if_show_LED2 = 0;
				if (F9_ON)
				{
					led_setting3 = 1;
				}
				else if (!F9_ON)
				{
					led_setting3 = 0;
				}
				break;

			case 11 :
				if_show_LED2 = 0;
				if (F10_ON)
				{
					led_setting3 = 1;
				}
				else if (!F10_ON)
				{
					led_setting3 = 0;
				}
				break;

			case 12 :
				if_show_LED2 = 0;
				if (F11_ON)
				{
					led_setting3 = 1;
				}
				else if (!F11_ON)
				{
					led_setting3 = 0;
				}
				break;

			case 13 :
				if_show_LED2 = 0;
				if (F12_ON)
				{
					led_setting3 = 1;
				}
				else if (!F12_ON)
				{
					led_setting3 = 0;
				}
				break;

			case 14 :
				if_show_LED2 = 0;
				if (F13_ON)
				{
					led_setting3 = 1;
				}
				else if (!F13_ON)
				{
					led_setting3 = 0;
				}
				break;

			case 15 :
				if_show_LED2 = 0;
				if (F14_ON)
				{
					led_setting3 = 1;
				}
				else if (!F14_ON)
				{
					led_setting3 = 0;
				}
				break;

			case 16 :
				if_show_LED2 = 0;
				if (F15_ON)
				{
					led_setting3 = 1;
				}
				else if (!F15_ON)
				{
					led_setting3 = 0;
				}
				break;

			case 17 :
				if_show_LED2 = 0;
				if (F16_ON)
				{
					led_setting3 = 1;
				}
				else if (!F16_ON)
				{
					led_setting3 = 0;
				}
				break;

			case 18 :
				if_show_LED2 = 0;
				if (F17_ON)
				{
					led_setting3 = 1;
				}
				else if (!F17_ON)
				{
					led_setting3 = 0;
				}
				break;

			case 19 :
				if_show_LED2 = 0;
				if (F18_ON)
				{
					led_setting3 = 1;
				}
				else if (!F18_ON)
				{
					led_setting3 = 0;
				}
				break;

			case 20 :
				if_show_LED2 = 0;
				if (F19_ON)
				{
					led_setting3 = 1;
				}
				else if (!F19_ON)
				{
					led_setting3 = 0;
				}
				break;

			case 21 :
				if_show_LED2 = 0;
				if (F20_ON)
				{
					led_setting3 = 1;
				}
				else if (!F20_ON)
				{
					led_setting3 = 0;
				}
				break;

			default :
				NULL;

		}
	}

// Function switch function ON/OFF
	void switchFunction(int stat, int index_Function)
	{
		switch (index_Function)
		{
			case 1 :
				if (stat == 0)
				{
					F0_ON = 0;
				}
				else if (stat == 1)
				{
					F0_ON = 1;
				}
				break;

			case 2 :
				if (stat == 0)
				{
					F1_ON = 0;
				}
				else if (stat == 1)
				{
					F1_ON = 1;
				}
				break;

			case 3 :
				if (stat == 0)
				{
					F2_ON = 0;
				}
				else if (stat == 1)
				{
					F2_ON = 1;
				}
				break;

			case 4 :
				if (stat == 0)
				{
					F3_ON = 0;
				}
				else if (stat == 1)
				{
					F3_ON = 1;
				}
				break;

			case 5 :
				if (stat == 0)
				{
					F4_ON = 0;
				}
				else if (stat == 1)
				{
					F4_ON = 1;
				}
				break;

			case 6 :
				if (stat == 0)
				{
					F5_ON = 0;
				}
				else if (stat == 1)
				{
					F5_ON = 1;
				}
				break;

			case 7 :
				if (stat == 0)
				{
					F6_ON = 0;
				}
				else if (stat == 1)
				{
					F6_ON = 1;
				}
				break;

			case 8 :
				if (stat == 0)
				{
					F7_ON = 0;
				}
				else if (stat == 1)
				{
					F7_ON = 1;
				}
				break;

			case 9 :
				if (stat == 0)
				{
					F8_ON = 0;
				}
				else if (stat == 1)
				{
					F8_ON = 1;
				}
				break;

			case 10 :
				if (stat == 0)
				{
					F9_ON = 0;
				}
				else if (stat == 1)
				{
					F9_ON = 1;
				}
				break;

			case 11 :
				if (stat == 0)
				{
					F10_ON = 0;
				}
				else if (stat == 1)
				{
					F10_ON = 1;
				}
				break;

			case 12 :
				if (stat == 0)
				{
					F11_ON = 0;
				}
				else if (stat == 1)
				{
					F11_ON = 1;
				}
				break;

			case 13 :
				if (stat == 0)
				{
					F12_ON = 0;
				}
				else if (stat == 1)
				{
					F12_ON = 1;
				}
				break;

			case 14 :
				if (stat == 0)
				{
					F13_ON = 0;
				}
				else if (stat == 1)
				{
					F13_ON = 1;
				}
				break;

			case 15 :
				if (stat == 0)
				{
					F14_ON = 0;
				}
				else if (stat == 1)
				{
					F14_ON = 1;
				}
				break;

			case 16 :
				if (stat == 0)
				{
					F15_ON = 0;
				}
				else if (stat == 1)
				{
					F15_ON = 1;
				}
				break;

			case 17 :
				if (stat == 0)
				{
					F16_ON = 0;
				}
				else if (stat == 1)
				{
					F16_ON = 1;
				}
				break;

			case 18 :
				if (stat == 0)
				{
					F17_ON = 0;
				}
				else if (stat == 1)
				{
					F17_ON = 1;
				}
				break;

			case 19 :
				if (stat == 0)
				{
					F18_ON = 0;
				}
				else if (stat == 1)
				{
					F18_ON = 1;
				}
				break;

			case 20 :
				if (stat == 0)
				{
					F19_ON = 0;
				}
				else if (stat == 1)
				{
					F19_ON = 1;
				}
				break;

			case 21 :
				if (stat == 0)
				{
					F20_ON = 0;
				}
				else if (stat == 1)
				{
					F20_ON = 1;
				}
				break;



			default :
				NULL;
		}
	}

// Function light led when bug
	void showbug(){}

// Input/Output data exchange
	// Actual state of sw and btn
	int stateSW;
	int stateBTN_C = 1;
	int stateBTN_U = 1;
	int stateBTN_L = 1;
	int stateBTN_R = 1;
	int stateBTN_D = 1;

	// Last state of the btn
	int regBTN_C = 1;
	int regBTN_U = 1;
	int regBTN_L = 1;
	int regBTN_R = 1;
	int regBTN_D = 1;

	// Action of btn
	int is_pressed_BTN_C = 0;
	int is_pressed_BTN_U = 0;
	int is_pressed_BTN_L = 0;
	int is_pressed_BTN_R = 0;
	int is_pressed_BTN_D = 0;
	int is_released_BTN_C = 0;
	int is_released_BTN_U = 0;
	int is_released_BTN_L = 0;
	int is_released_BTN_R = 0;
	int is_released_BTN_D = 0;

	XGpio sw_btn, led;

	// Function to read state of the sw
	void readStateSw()
	{
		stateSW = (XGpio_DiscreteRead(&sw_btn, 1) & 0x7FFF);
	}

	// Function to read state of the buttons
	void readStateBtn()
	{
		// Save the ancient state of the buttons
		regBTN_C = stateBTN_C;
		regBTN_U = stateBTN_U;
		regBTN_L = stateBTN_L;
		regBTN_R = stateBTN_R;
		regBTN_D = stateBTN_D;

		// Read the new value of the buttons
		stateBTN_C = (XGpio_DiscreteRead(&sw_btn, 2) & 0x1);
		stateBTN_U = ((XGpio_DiscreteRead(&sw_btn, 2)>>1) & 0x1);
		stateBTN_L = ((XGpio_DiscreteRead(&sw_btn, 2)>>2) & 0x1);
		stateBTN_R = ((XGpio_DiscreteRead(&sw_btn, 2)>>3) & 0x1);
		stateBTN_D = ((XGpio_DiscreteRead(&sw_btn, 2)>>4) & 0x1);

		// Test the change of the state of buttons
		if (stateBTN_C != regBTN_C)
		{
			if (stateBTN_C == 0)
			{
				is_pressed_BTN_C = 1;
				is_released_BTN_C = 0;
			}
			else
			{
				is_pressed_BTN_C = 0;
				is_released_BTN_C = 1;
			}
		}
		else
		{
			is_pressed_BTN_C = 0;
			is_released_BTN_C = 0;
		}

		if (stateBTN_U != regBTN_U)
		{
			if (stateBTN_U == 0)
			{
				is_pressed_BTN_U = 1;
				is_released_BTN_U = 0;
			}
			else
			{
				is_pressed_BTN_U = 0;
				is_released_BTN_U = 1;
			}
		}
		else
		{
			is_pressed_BTN_U = 0;
			is_released_BTN_U = 0;
		}

		if (stateBTN_L != regBTN_L)
		{
			if (stateBTN_L == 0)
			{
				is_pressed_BTN_L = 1;
				is_released_BTN_L = 0;
			}
			else
			{
				is_pressed_BTN_L = 0;
				is_released_BTN_L = 1;
			}
		}
		else
		{
			is_pressed_BTN_L = 0;
			is_released_BTN_L = 0;
		}

		if (stateBTN_R != regBTN_R)
		{
			if (stateBTN_R == 0)
			{
				is_pressed_BTN_R = 1;
				is_released_BTN_R = 0;
			}
			else
			{
				is_pressed_BTN_R = 0;
				is_released_BTN_R = 1;
			}
		}
		else
		{
			is_pressed_BTN_R = 0;
			is_released_BTN_R = 0;
		}

		if (stateBTN_D != regBTN_D)
		{
			if (stateBTN_D == 0)
			{
				is_pressed_BTN_D = 1;
				is_released_BTN_D = 0;
			}
			else
			{
				is_pressed_BTN_D = 0;
				is_released_BTN_D = 1;
			}
		}
		else
		{
			is_pressed_BTN_D = 0;
			is_released_BTN_D = 0;
		}


	}

	// Function to write value to led to be done
	void writeLed()
	{
		if (if_show_LED2 == 1)
		{
			led_value = (led_setting3 << 3) + (led_setting2 << 8) + (led_setting1 << 9) + (led_setting0 << 12);
		}
		else if (if_show_LED2 == 0)
		{
			led_value = (led_setting3 << 3) + (led_setting1 << 9) + (led_setting0 << 12);
		}
		XGpio_DiscreteWrite(&led, 1, led_value & 0xF);
	}

// Function to generate the command(s)
// return the number of the command 0 means it faul to generate the commmand
int generateCommand(int Function, int adresse)
{
	switch (led_setting0)
	{
		case 0 : // Function changing speed
			if (direction_Train == 1) 	// 1 : avant
			{
				command0 = 0x40 + 0x20 + speed_Train;
			}
			else
			{
				command0 = 0x40 + speed_Train;
			}
			command1 = 0;
			break;

		case 1 : // Function F0
			if (F0_ON == 1)
			{
				command0 = 0x80 + 0x10;
			}
			else if (F0_ON == 0)
			{
				command0 = 0x80 + 0x00;
			}
			command1 = 0;
			break;

		case 2 : // Function F1
			if (F1_ON == 1)
			{
				command0 = 0x80 + 0x01;
			}
			else if (F1_ON == 0)
			{
				command0 = 0x80 + 0x00;
			}
			command1 = 0;
			break;

		case 3 : // Function F2
			if (F2_ON == 1)
			{
				command0 = 0x80 + 0x02;
			}
			else if (F2_ON == 0)
			{
				command0 = 0x80 + 0x00;
			}
			command1 = 0;
			break;

		case 4 : // Function F3
			if (F3_ON == 1)
			{
				command0 = 0x80 + 0x04;
			}
			else if (F3_ON == 0)
			{
				command0 = 0x80 + 0x00;
			}
			command1 = 0;
			break;

		case 5 : // Function F4
			if (F4_ON == 1)
			{
				command0 = 0x80 + 0x08;
			}
			else if (F4_ON == 0)
			{
				command0 = 0x80 + 0x00;
			}
			command1 = 0;
			break;

		case 6 : // Function F5
			if (F5_ON == 1)
			{
				command0 = 0xB0 + 0x01;
			}
			else if (F5_ON == 0)
			{
				command0 = 0xB0 + 0x00;
			}
			command1 = 0;
			break;

		case 7 : // Function F6
			if (F6_ON == 1)
			{
				command0 = 0xB0 + 0x02;
			}
			else if (F6_ON == 0)
			{
				command0 = 0xB0 + 0x00;
			}
			command1 = 0;
			break;

		case 8 : // Function F7
			if (F7_ON == 1)
			{
				command0 = 0xB0 + 0x04;
			}
			else if (F7_ON == 0)
			{
				command0 = 0xB0 + 0x00;
			}
			command1 = 0;
			break;

		case 9 : // Function F8
			if (F8_ON == 1)
			{
				command0 = 0xB0 + 0x08;
			}
			else if (F8_ON == 0)
			{
				command0 = 0xB0 + 0x00;
			}
			command1 = 0;
			break;

		case 10 : // Function F9
			if (F9_ON == 1)
			{
				command0 = 0xA0 + 0x01;
			}
			else if (F9_ON == 0)
			{
				command0 = 0xA0 + 0x00;
			}
			command1 = 0;
			break;

		case 11 : // Function F10
			if (F10_ON == 1)
			{
				command0 = 0xA0 + 0x02;
			}
			else if (F10_ON == 0)
			{
				command0 = 0xA0 + 0x00;
			}
			command1 = 0;
			break;

		case 12 : // Function F11
			if (F11_ON == 1)
			{
				command0 = 0xA0 + 0x04;
			}
			else if (F11_ON == 0)
			{
				command0 = 0xA0 + 0x00;
			}
			command1 = 0;
			break;

		case 13 : // Function F12
			if (F12_ON == 1)
			{
				command0 = 0xA0 + 0x08;
			}
			else if (F12_ON == 0)
			{
				command0 = 0xA0 + 0x00;
			}
			command1 = 0;
			break;

		case 14 : // Function F13
			command0 = 0xDE;
			if (F13_ON == 1)
			{
				command1 = 0x1;
			}
			else if (F13_ON == 0)
			{
				command1 = 0;
			}
			break;

		case 15 : // Function F14
			command0 = 0xDE;
			if (F14_ON == 1)
			{
				command1 = 0x2;
			}
			else if (F14_ON == 0)
			{
				command1 = 0;
			}
			break;

		case 16 : // Function F15
			command0 = 0xDE;
			if (F15_ON == 1)
			{
				command1 = 0x4;
			}
			else if (F15_ON == 0)
			{
				command1 = 0;
			}
			break;

		case 17 : // Function F16
			command0 = 0xDE;
			if (F16_ON == 1)
			{
				command1 = 0x8;
			}
			else if (F16_ON == 0)
			{
				command1 = 0;
			}
			break;

		case 18 : // Function F17
			command0 = 0xDE;
			if (F17_ON == 1)
			{
				command1 = 0x10;
			}
			else if (F17_ON == 0)
			{
				command1 = 0;
			}
			break;

		case 19 : // Function F18
			command0 = 0xDE;
			if (F18_ON == 1)
			{
				command1 = 0x20;
			}
			else if (F18_ON == 0)
			{
				command1 = 0;
			}
			break;

		case 20 : // Function F19
			command0 = 0xDE;
			if (F19_ON == 1)
			{
				command1 = 0x40;
			}
			else if (F19_ON ==0)
			{
				command1 = 0;
			}
			break;

		case 21 : // Function F20
			command0 = 0xDE;
			if (F20_ON == 1)
			{
				command1 = 0x80;
			}
			else if (F20_ON == 0)
			{
				command1 = 0;
			}
			break;

		default:
			NULL;
	}
}

// Function generate trame
void generateTrame()
{
	if (led_setting0 >= 14 && led_setting0 <= 21)	// Trame with two commands
	{
		address = index_Train;
		xor_command = address ^ command0 ^ command1;
		trame = xor_command << 1 + command1 << 10 + command0 << 19 + address << 28;
	}
	else if (led_setting0 >= 0 && led_setting0 <= 13)	// Trame with one command
	{
		address = index_Train;
		xor_command = address ^ command0 ;
		trame = xor_command << 1 + command0 << 10 + address << 19;
	}
}

int main()
{
	// Inisialization of the ports
	XGpio_Initialize(&sw_btn, XPAR_SW_BP_DEVICE_ID);
	XGpio_Initialize(&led, XPAR_LED_DEVICE_ID);

	// Set sw bp to input & led to output
	XGpio_SetDataDirection(&sw_btn,1,1);
	XGpio_SetDataDirection(&sw_btn,2,1);
	XGpio_SetDataDirection(&led,1,0);

	writeLed();
/*
	while(1)
	{
		// Read the value of the sw and bp
		readStateSw();
		readStateBtn();
		if (is_pressed_BTN_C == 1)
		{
		}
		if (is_pressed_BTN_U == 1)
		{
			pressUpButton();
		}
		if (is_pressed_BTN_L == 1)
		{
			pressLeftButton();
		}
		if (is_pressed_BTN_R == 1)
		{
			pressRightButton();
		}
		if (is_pressed_BTN_D == 1)
		{
			pressDownButton();
		}


		for(int i = 0; i < 80000; )
		{
			i ++;
		}


	}
*/


	return 0;
}
