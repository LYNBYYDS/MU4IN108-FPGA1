#include "xgpio.h"
#include "xparameters.h"

// Trame parts
	int address;
	int command0;
	int command1;


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
		bool F0_ON = false;
		bool F1_ON = false;
		bool F2_ON = false;
		bool F3_ON = false;
		bool F4_ON = false;

	// Function F5-F12
		bool F5_ON - false;
		bool F6_ON - false;
		bool F7_ON - false;
		bool F8_ON - false;
		bool F9_ON - false;
		bool F10_ON - false;
		bool F11_ON - false;
		bool F12_ON - false;

	// Function F13-F20
		bool F13_ON - false;
		bool F14_ON - false;
		bool F15_ON - false;
		bool F16_ON - false;
		bool F17_ON - false;
		bool F18_ON - false;
		bool F19_ON - false;
		bool F20_ON - false;

// LED 
	// LED trigger
		// 0 - 3 : Function changing speed
		// 0, 1, 3 : Function F0 - F20
		int LED_index = 0;

	// Each led setting 
		// Setting0 : function type
		int led_setting0 = 0;
		int LED0 = 0;
		bool if_show_LED0 = true;
		// Setting1 : train address
		int led_setting1 = 1;
		int LED1 = 1;
		bool if_show_LED1 = true;
		// Setting2 : train direction
		int led_setting2 = 1;
		int LED2 = 0;
		bool if_show_LED2 = true;
		// Setting3 : speed setting or ON/OFF
		int led_setting3 = 0;
		int LED3 = 0;
		bool if_show_LED3 = true;
	
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

// Fucntion recharge LED data when change function
// Function press up button
	void pressUpButton()
	{
		switch (LED_index)
		{
			case 0 : // Function type
				if 

		}
	}

// Input/Output data exchange
	// Actual state of sw and btn
	int stateSW;
	int stateBTN_C, stateBTN_U, stateBTN_L, stateBTN_R, stateBTN_D;

	// Last state of the btn 
	int regBTN_C, regBTN_U, regBTN_L, regBTN_R, regBTN_D;

	// Action of btn
	bool is_pressed_BTN_C, is_pressed_BTN_U, is_pressed_BTN_L, is_pressed_BTN_R, is_pressed_BTN_U;
	bool is_released_BTN_C, is_released_BTN_U, is_released_BTN_L, is_released_BTN_T, is_released_BTN_U;

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
			if (!stateBTN_C)
			{
				is_pressed_BTN_C = true;
				is_released_BTN_C = false;
			}
			else 
			{
				is_pressed_BTN_C = false;
				is_released_BTN_C = true;
			}
		}
		else
		{
			is_pressed_BTN_C = false;
			is_released_BTN_C = false;
		}

		if (stateBTN_U != regBTN_U)
		{
			if (!stateBTN_U)
			{
				is_pressed_BTN_U = true;
				is_released_BTN_U = false;
			}
			else 
			{
				is_pressed_BTN_U = false;
				is_released_BTN_U = true;
			}
		}
		else
		{
			is_pressed_BTN_U = false;
			is_released_BTN_U = false;
		}

		if (stateBTN_L != regBTN_L)
		{
			if (!stateBTN_L)
			{
				is_pressed_BTN_L = true;
				is_released_BTN_L = false;
			}
			else 
			{
				is_pressed_BTN_L = false;
				is_released_BTN_L = true;
			}
		}
		else
		{
			is_pressed_BTN_L = false;
			is_released_BTN_L = false;
		}

		if (stateBTN_R != regBTN_R)
		{
			if (!stateBTN_R)
			{
				is_pressed_BTN_R = true;
				is_released_BTN_R = false;
			}
			else 
			{
				is_pressed_BTN_R = false;
				is_released_BTN_R = true;
			}
		}
		else
		{
			is_pressed_BTN_R = false;
			is_released_BTN_R = false;
		}

		if (stateBTN_D != regBTN_D)
		{
			if (!stateBTN_D)
			{
				is_pressed_BTN_D = true;
				is_released_BTN_D = false;
			}
			else 
			{
				is_pressed_BTN_D = false;
				is_released_BTN_D = true;
			}
		}
		else
		{
			is_pressed_BTN_D = false;
			is_released_BTN_D = false;
		}


	}
		
	// Function to write value to led to be done 
	void writeLed(int value)
{
	

	
	XGpio_DiscreteWrite(&led, 1, (value & 0x7FFF));
}

// Function to generate the command(s)
// return the number of the command 0 means it faul to generate the commmand
int generateCommand(int Function, int adresse)
{
	switch (Function)
	{
	case 22 : // Change speed
		if (direction_Train) 	// 1 : avant
		{
			command0 = 0x40 + 0x20 + speed_Train;
		}
		command1 = 0;
		break;
	
	case 0 : // Function F0
		if (direction_Train) 	// 1 : avant
		{
			command0 = 0x40 + 0x20 + speed_Train;
		}
		command1 = 0;
		break;

	default:
		return 0;
		break;
	}
		
	}
	else if
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

	// Read the value of the sw and bp









	return 0;
}
