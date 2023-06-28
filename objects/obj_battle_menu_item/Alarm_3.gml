if(manager_battle_remix.reset_item_num == -1) exit;


if(myItem_num == manager_battle_remix.reset_item_num)
{
	show_debug_message("RESETING::" +string(item_list_num) + "::"+string(myItem_num));
	manager_battle_remix.boolItem[myItem_num] = false;
	manager_battle_remix.boolItemUse[myItem_num] = false;
	manager_battle_remix.boolItemBag[myItem_num] = -1;
	
	myItem_num = -1;
	chosen_on = false;
	
	
	
	manager_battle_remix.reset_item_num = -1;
}