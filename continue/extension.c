#include "xgpio.h"
#include "xparameters.h"

#define FUNCTION22 0x40





// Variable for the functions
	// The number of function 
	int nb_Function = 0;

	// Componant to forme a trame
	int address;
	int command0;
	int command1;

	
	// Function ChangeSpeed
	int index_Train = 1;
	int direction_Train = 1;
	int speed_Train = 0;
	// F0-F4
	bool is_Light_ON = false;
	bool is_Sound_ON = false;
	bool play_Horn1 = false;
	bool play_Horn2 = false;
	bool is Turbo_ON - false;
	// F5-F12

	
	int trigger_function = 0;
	int trigger_setting = 0;
	
	// Function press right button
	void pressRightButton()
	{
		if (trigger_function == 0) 		// Change speed
		{
			triiger
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
	// Function Change Speed

	
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
