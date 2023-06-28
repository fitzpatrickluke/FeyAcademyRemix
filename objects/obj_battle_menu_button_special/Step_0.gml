/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

switch(manager_battle_remix.curr_battle_phase)
{
	case battle_phase.chooseP1:
		if(manager_battle_remix.boolSpecialTimer[0] < 6)
			menu_on = false;
	break;
	
	case battle_phase.chooseP2:
		if(manager_battle_remix.boolSpecialTimer[1] < 6)
			menu_on = false;
	break;
	
	case battle_phase.chooseP3:
		if(manager_battle_remix.boolSpecialTimer[2] < 6)
			menu_on = false;
	break;
}

