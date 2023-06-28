if(obj_battle_ply.choosingPlayer)
{
	obj_battle_ply.choosingPlayer = false;
	obj_battle_ply.choosePlayerOn = false;
	if(curr_unit_set_spell)
	{
		obj_battle_menu_spell.menu_on = true
	}
	else if(curr_unit_set_item)
	{
		obj_battle_menu_item.menu_on = true;
		curr_unit_item_num = -1;
		
		if(curr_battle_phase == battle_phase.chooseP1)
		{
			reset_item_num = 0;
			obj_battle_menu_item.alarm[3] = 1;
		}
		else if(curr_battle_phase == battle_phase.chooseP1)
		{
			reset_item_num = 1;
			obj_battle_menu_item.alarm[3] = 1;
		}
		else if(curr_battle_phase == battle_phase.chooseP1)
		{
			reset_item_num = 2;
			obj_battle_menu_item.alarm[3] = 1;
		}
	}
}
else if(obj_battle_menu_spell.menu_on)
{
	obj_battle_menu_button.menu_on = true;
	obj_battle_menu_spell.menu_on = false;
	obj_battle_portrait.menu_on = true;
	
	if(curr_battle_phase == battle_phase.chooseP1)
	{
		obj_battle_menu_spell.spellList = obj_battle_ply.spellList;
		obj_battle_menu_spell.spellListLevel = obj_battle_ply.spellListLevel;
	}
	else if(curr_battle_phase == battle_phase.chooseP2)
	{
		obj_battle_menu_spell.spellList = obj_battle_ply2.spellList;
		obj_battle_menu_spell.spellListLevel = obj_battle_ply2.spellListLevel;
	}
	else if(curr_battle_phase == battle_phase.chooseP3)
	{
		obj_battle_menu_spell.spellList = obj_battle_ply3.spellList;
		obj_battle_menu_spell.spellListLevel = obj_battle_ply3.spellListLevel;
	}
}
else if(instance_exists(obj_battle_menu_item) && obj_battle_menu_item.menu_on)
{
	obj_battle_menu_button.menu_on = true;
	obj_battle_menu_item.menu_on = false;
	obj_battle_portrait.menu_on = true;
}
else if(obj_battle_menu_button.menu_on)
{
	if(curr_battle_phase == battle_phase.chooseP2 && unitHp_curr[0] > 0)
	{
		obj_battle_menu_spell.spellList = obj_battle_ply.spellList;
		obj_battle_menu_spell.spellListLevel = obj_battle_ply.spellListLevel;
		
		curr_battle_phase = battle_phase.chooseP1;
		boolAttack[0] = false;
		boolDefend[0] = false;
		boolSpecial[0] = false;
		boolFlee[0] = false;
		boolStrike[0] = false;
		boolItem[0] = false;
		
		reset_item_num = 0;
		if(instance_exists(obj_battle_menu_item))
			obj_battle_menu_item.alarm[3] = 1;
		
	}
	else if(curr_battle_phase == battle_phase.chooseP3 && unitHp_curr[1] > 0)
	{
		obj_battle_menu_spell.spellList = obj_battle_ply2.spellList;
		obj_battle_menu_spell.spellListLevel = obj_battle_ply2.spellListLevel;
		
		curr_battle_phase = battle_phase.chooseP2;
		boolAttack[1] = false;
		boolDefend[1] = false;
		boolSpecial[1] = false;
		boolFlee[1] = false;
		boolStrike[1] = false;
		boolItem[1] = false;
		
		reset_item_num = 1;
		if(instance_exists(obj_battle_menu_item))
			obj_battle_menu_item.alarm[3] = 1;
	}
}