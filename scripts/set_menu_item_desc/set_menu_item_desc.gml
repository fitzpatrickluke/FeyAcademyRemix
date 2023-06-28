///@description set_menu_item_desc
///@arg item_num
///@arg id
///@arg item_list_num
function set_menu_item_desc(argument0, argument1, argument2)
{
	var num = argument0;
	
	with(obj_menu_item_desc)
	{
		menu_on = true;
		txt_name = manager_items.item_list[# num, 0];
		txt_desc =  string_wrap( manager_items.item_list[# num, 3],txt_desc_w);
	}
	
	obj_menu_item_use.item_num = num;
	obj_menu_item_desc.item_list_num = argument2;
	obj_menu_item_use.menu_on = true;
	
	if(id.use_off)
		obj_menu_item_use.menu_on = false;
	
}