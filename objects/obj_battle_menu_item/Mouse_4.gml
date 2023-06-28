if(!menu_on)
	exit;

if(not_battle_item) exit;
if(chosen_on) exit;
	
if(pause) exit;

manager_battle_remix.curr_unit_set_item = true;
manager_battle_remix.curr_unit_set_spell = false;
obj_battle_menu_button.pause = true;
obj_battle_menu_button.alarm[0] = 10;
chosen_on = true;

show_debug_message("ITEM:::::::: " + string(manager_items.item_list[# item_num,  0]));

var check1 = manager_items.item_list[# item_num, 4];

if(check1 == true)
{
	switch(manager_battle_remix.curr_battle_phase)
	{
		case battle_phase.chooseP1:
		manager_battle_remix.boolItem[0] = true;
		manager_battle_remix.boolItemUse[0] = item_num;
		manager_battle_remix.boolItemBag[0] = item_list_num;
		myItem_num = 0;
		set_battle_button_item(item_list_num, id);
		manager_battle_remix.curr_unit_item_num = 0;
		break;
		case battle_phase.chooseP2:
		manager_battle_remix.boolItem[1] = true
		manager_battle_remix.boolItemUse[1] = item_num;
		manager_battle_remix.boolItemBag[1] = item_list_num;
		myItem_num = 1;
		set_battle_button_item(item_list_num, id);
		manager_battle_remix.curr_unit_item_num = 1;
		break;
		case battle_phase.chooseP3:
		manager_battle_remix.boolItem[2] = true;
		manager_battle_remix.boolItemUse[2] = item_num;
		manager_battle_remix.boolItemBag[2] = item_list_num;
		myItem_num = 2;
		set_battle_button_item(item_list_num, id);
		manager_battle_remix.curr_unit_item_num = 2;;
		break;
	}
	obj_battle_menu_item.menu_on = false;
	obj_battle_ply.choosingPlayer = true;
}
else
{

// choose spell and advance to next phase
switch(manager_battle_remix.curr_battle_phase)
{
	case battle_phase.chooseP1:
	// set defend
	manager_battle_remix.boolItem[0] = true;
	manager_battle_remix.boolItemUse[0] = item_num;
	manager_battle_remix.boolItemBag[0] = item_list_num;
	myItem_num = 0;
	set_battle_button_item(item_list_num, id);
	obj_battle_menu_item.alarm[1] = 1;
		
	if(manager_battle_remix.unitHp_curr[1] <= 0)
	{
		if(manager_battle_remix.unitHp_curr[2] <= 0)
		{
			manager_battle_remix.curr_battle_phase = battle_phase.setE;
			obj_battle_menu_spell.spellList = obj_battle_ply.spellList;
			obj_battle_menu_spell.spellListLevel = obj_battle_ply.spellListLevel;	

			obj_battle_menu_button.menu_on = false;
			obj_battle_portrait.menu_on = false;
			obj_battle_menu_item.menu_on = false;

			// set enemy spell
			set_battle_enemy_spell();
		}
		else
		{
			manager_battle_remix.curr_battle_phase = battle_phase.chooseP3;
			obj_battle_menu_spell.spellList = obj_battle_ply3.spellList;
			obj_battle_menu_spell.spellListLevel = obj_battle_ply3.spellListLevel;	
			
			obj_battle_menu_item.menu_on = false;
			obj_battle_menu_button.menu_on = true;
			obj_battle_portrait.menu_on = true;
		}
	}
	else
	{
		manager_battle_remix.curr_battle_phase = battle_phase.chooseP2;
		obj_battle_menu_spell.spellList = obj_battle_ply2.spellList;
		obj_battle_menu_spell.spellListLevel = obj_battle_ply2.spellListLevel;
		
		obj_battle_menu_item.menu_on = false;
		obj_battle_menu_button.menu_on = true;
		obj_battle_portrait.menu_on = true;
	}
	
	break;
	
	case battle_phase.chooseP2:
	// set defend
	manager_battle_remix.boolItem[1] = true;
	manager_battle_remix.boolItemUse[1] = item_num;
	manager_battle_remix.boolItemBag[1] = item_list_num;
	myItem_num = 1;
	set_battle_button_item(item_list_num, id);
	
	if(manager_battle_remix.unitHp_curr[2] <= 0)
	{
		manager_battle_remix.curr_battle_phase = battle_phase.setE;
		obj_battle_menu_spell.spellList = obj_battle_ply.spellList;
		obj_battle_menu_spell.spellListLevel = obj_battle_ply.spellListLevel;	

		obj_battle_menu_button.menu_on = false;
		obj_battle_portrait.menu_on = false;
		obj_battle_menu_item.menu_on = false;

		// set enemy spell
		set_battle_enemy_spell();
	}
	else
	{
		manager_battle_remix.curr_battle_phase = battle_phase.chooseP3;
		obj_battle_menu_spell.spellList = obj_battle_ply3.spellList;
		obj_battle_menu_spell.spellListLevel = obj_battle_ply3.spellListLevel;	
		
		obj_battle_menu_item.menu_on = false;
		obj_battle_menu_button.menu_on = true;
		obj_battle_portrait.menu_on = true;
	}
	
	break;
	
	case battle_phase.chooseP3:
	// set defend
	manager_battle_remix.boolItem[2] = true;
	manager_battle_remix.boolItemUse[2] = item_num;
	manager_battle_remix.boolItemBag[2] = item_list_num;
	myItem_num = 2;
	set_battle_button_item(item_list_num, id);
	
	manager_battle_remix.curr_battle_phase = battle_phase.setE;
	obj_battle_menu_spell.spellList = obj_battle_ply.spellList;
	obj_battle_menu_spell.spellListLevel = obj_battle_ply.spellListLevel;	

	obj_battle_menu_button.menu_on = false;
	obj_battle_portrait.menu_on = false;
	obj_battle_menu_item.menu_on = false;
	
	
	// set enemy spell
	set_battle_enemy_spell();
	break;
}

}


