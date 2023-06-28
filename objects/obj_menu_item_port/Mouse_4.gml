if(menu_on == false) exit;
if(no_heal_on_2) exit;

if(no_heal_on)
{
	if(revive_on)
	{
		obj_menu_title.healing_curr = false;
		obj_menu_item_use.menu_on = true;
		obj_menu_item_port.menu_on = false;
		menu_revive_item(student_curr);
		
		no_heal_on = false;
		no_heal_on_2 = false;
		revive_on = false;
		
		ds_list_delete(manager_students.battle_items,obj_menu_item_desc.item_list_num);
		obj_menu_item_desc.item_list_num = -1;
		obj_menu_item.alarm[0] = 1;
	}
	else
		exit;
}

if(obj_menu_title.healing_curr)
{

	obj_menu_title.healing_curr = false;
	obj_menu_item_use.menu_on = true;
	obj_menu_item_port.menu_on = false;
	
	no_heal_on = false;
	no_heal_on_2 = false;
	revive_on = false;
	
	if(manager_items.item_list[# obj_menu_item_use.item_num, 1] == items.medicine)
		menu_heal_item(student_curr, obj_menu_item_use.item_num);
	else if(manager_items.item_list[# obj_menu_item_use.item_num, 1] == items.nectar)
		menu_heal_item_mp(student_curr, obj_menu_item_use.item_num);
		
	ds_list_delete(manager_students.battle_items,obj_menu_item_desc.item_list_num);
	obj_menu_item_desc.item_list_num = -1;
	obj_menu_item.alarm[0] = 1;

}
