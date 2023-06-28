///@description set_shop_button_drop_switch
///@arg item_num
///@arg ids
function set_shop_button_drop_switch(argument0, argument1)
{
	var num = argument0;
	
	argument1.item_num = num;
	
	if(num >= manager_items.equip_list_w)
	{
		argument1.menu_on = false
	}
	else
	{
		argument1.menu_on = true;
		argument1.txt_curr = manager_items.equip_list[# num, 0];
	}
	
}