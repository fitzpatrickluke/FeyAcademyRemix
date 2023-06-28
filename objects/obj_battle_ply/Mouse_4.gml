if(!choosingPlayer) exit;

if(manager_battle_remix.curr_unit_item_num != -1)
{
	if(manager_items.item_list[# manager_battle_remix.boolItemUse[manager_battle_remix.curr_unit_item_num], 1] == items.dust)
	{
		if(manager_battle_remix.unitHp_curr[player_num] > 0) 
			exit;
	}
	else if(manager_items.item_list[# manager_battle_remix.boolItemUse[manager_battle_remix.curr_unit_item_num], 1] == items.medicine)
	{
		if(manager_battle_remix.unitHp_curr[player_num] <= 0) 
			exit;
		if(manager_battle_remix.unitHp_curr[player_num] == manager_battle_remix.unitHp[player_num]) 
			exit;
	}
	else if(manager_items.item_list[# manager_battle_remix.boolItemUse[manager_battle_remix.curr_unit_item_num], 1] == items.nectar)
	{
		if(manager_battle_remix.unitMp_curr[player_num] == manager_battle_remix.unitMp[player_num]) 
			exit;
	}
	else if(manager_items.item_list[# manager_battle_remix.boolItemUse[manager_battle_remix.curr_unit_item_num], 1] == items.antidote)
	{
		if(manager_battle_remix.boolPetrify[player_num] == false) 
			exit;
	}
	else if(manager_items.item_list[# manager_battle_remix.boolItemUse[manager_battle_remix.curr_unit_item_num], 1] == items.pure)
	{
		if(manager_battle_remix.boolCurse[player_num] == false) 
			exit;
	}
	else if(manager_items.item_list[# manager_battle_remix.boolItemUse[manager_battle_remix.curr_unit_item_num], 1] == items.orb)
	{
		if(manager_battle_remix.boolBlind[player_num] == false) 
			exit;
	}
	else if(manager_items.item_list[# manager_battle_remix.boolItemUse[manager_battle_remix.curr_unit_item_num], 1] == items.chime)
	{
		if(manager_battle_remix.boolDeaf[player_num] == false) 
			exit;
	}
}
else
{
	if(manager_battle_remix.unitHp_curr[player_num] <= 0) 
		exit;
}

obj_battle_ply.choosingPlayer = false;
obj_battle_ply.choosePlayerOn = false;

manager_battle_remix.curr_unit_item_num = -1;

switch(manager_battle_remix.curr_battle_phase)
{
	case battle_phase.chooseP1:
	
	// set player
	manager_battle_remix.unitTarget[0] = player_num;
	// set spell
	obj_battle_menu_spell.spellList = obj_battle_ply2.spellList;
	obj_battle_menu_spell.spellListLevel = obj_battle_ply2.spellListLevel;
	
	if(manager_battle_remix.unitHp_curr[1] <= 0)
	{
		if(manager_battle_remix.unitHp_curr[2] <= 0)
		{
			//set turn
			manager_battle_remix.curr_battle_phase = battle_phase.setE;
			obj_battle_menu_spell.menu_on = false;
			obj_battle_menu_button.menu_on = false;
			obj_battle_portrait.menu_on = false;
	
			// set enemy spell
			set_battle_enemy_spell();
		}
		else
		{
			// set turn
			manager_battle_remix.curr_battle_phase = battle_phase.chooseP3;
			obj_battle_menu_button.menu_on = true;
			obj_battle_portrait.menu_on = true;
		}
	}
	else
	{
		manager_battle_remix.curr_battle_phase = battle_phase.chooseP2;
		obj_battle_menu_button.menu_on = true;
		obj_battle_portrait.menu_on = true;
	}
	
	break;
	
	case battle_phase.chooseP2:
	
	// set player
	manager_battle_remix.unitTarget[1] = player_num;
	// set spell
	obj_battle_menu_spell.spellList = obj_battle_ply3.spellList;
	obj_battle_menu_spell.spellListLevel = obj_battle_ply3.spellListLevel;	
	
	if(manager_battle_remix.unitHp_curr[2] <= 0)
	{
		//set turn
		manager_battle_remix.curr_battle_phase = battle_phase.setE;
		obj_battle_menu_spell.menu_on = false;
		obj_battle_menu_button.menu_on = false;
		obj_battle_portrait.menu_on = false;
	
		// set enemy spell
		set_battle_enemy_spell();
	}
	else
	{
		// set turn
		manager_battle_remix.curr_battle_phase = battle_phase.chooseP3;
		obj_battle_menu_button.menu_on = true;
		obj_battle_portrait.menu_on = true;
	}
	
	break;
	
	case battle_phase.chooseP3:
	
	// set player
	manager_battle_remix.unitTarget[2] = player_num;
	// set spell
	obj_battle_menu_spell.spellList = obj_battle_ply.spellList;
	obj_battle_menu_spell.spellListLevel = obj_battle_ply.spellListLevel;
	
	//set turn
	manager_battle_remix.curr_battle_phase = battle_phase.setE;
	obj_battle_menu_spell.menu_on = false;
	obj_battle_menu_button.menu_on = false;
	obj_battle_portrait.menu_on = false;
	
	// set enemy spell
	set_battle_enemy_spell();
	break;
}