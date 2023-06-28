///@description use_menu_item
///@arg item_num
function use_menu_item(argument0)
{
	var num = argument0;
	var grid = manager_items.item_list;
	
	switch(grid[# num, 1])
	{
		case items.medicine:
		
		obj_menu_item_port.menu_on = true;
		obj_menu_item_use.menu_on = false;
		obj_menu_title.healing_curr = true;
		
		obj_menu_item_port.alarm[0] = 1;
		
		break;
		
		case items.dust:
		
		obj_menu_item_port.menu_on = true;
		obj_menu_item_use.menu_on = false;
		obj_menu_title.healing_curr = true;
		
		obj_menu_item_port.alarm[2] = 1;
		
		break;
		
		case items.nectar:
		
		obj_menu_item_port.menu_on = true;
		obj_menu_item_use.menu_on = false;
		obj_menu_title.healing_curr = true;
		
		obj_menu_item_port.alarm[1] = 1;
		
		break;
		
		
		case items.warp:
		
		heal_hp();
		manager_students.explore_start_x = 80;
		manager_students.explore_start_y = 128;
		room = castle_bed;
		
		ds_list_delete(manager_students.battle_items,obj_menu_item_desc.item_list_num);
		obj_menu_item_desc.item_list_num = -1;
		obj_menu_item.alarm[0] = 1;
		
		
		break;
	}
}