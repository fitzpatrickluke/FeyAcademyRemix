///@description set_battle_dmg_item
///@arg dmg
///@arg num
///@arg element
function set_battle_dmg_item(argument0, argument1, argument2)
{
	var dmg = argument0;
	var elem = argument2;
	if(argument1 == 3)
	{
		
		
		
		
	if(manager_battle_remix.boolItem[0]
	|| manager_battle_remix.boolItem[1]
	|| manager_battle_remix.boolItem[2])
	{
		if(manager_items.item_list[# manager_battle_remix.boolItemUse[0], 1] == items.decr
		|| manager_items.item_list[# manager_battle_remix.boolItemUse[1], 1] == items.decr
		|| manager_items.item_list[# manager_battle_remix.boolItemUse[2], 1] == items.decr)
		{
			if(elem == manager_items.item_list[# manager_battle_remix.boolItemUse[0], 2])
				dmg *= 0.5;
		}
		
		if(manager_items.item_list[# manager_battle_remix.boolItemUse[0], 1] == items.void
		|| manager_items.item_list[# manager_battle_remix.boolItemUse[1], 1] == items.void
		|| manager_items.item_list[# manager_battle_remix.boolItemUse[2], 1] == items.void)
		{
			if(elem == manager_items.item_list[# manager_battle_remix.boolItemUse[0], 2])
				dmg = 0;
		}
	}
	
	
	
	}
	
	return dmg;
}