///@description reset_battle_item
///@arg id
///@arg num
function reset_battle_item(argument0, argument1)
{
	show_debug_message(string(argument0.item_list_num)+"::"+string(argument0.myItem_num)+"::"+string(argument1))
	if(argument0.myItem_num == argument1)
	{
		argument0.myItem_num = -1;
		argument0.chosen_on = false;
		manager_battle_remix.boolItem[argument1] = false;
		manager_battle_remix.boolItemUse[argument1] = false;
		manager_battle_remix.boolItemBag[argument1] = -1;
	}
}