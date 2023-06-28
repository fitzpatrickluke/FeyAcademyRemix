///@description set_shop_button_drop
///@arg item_num
///@arg ids
function set_shop_button_drop(argument0, argument1)
{
	var num = argument0;
	
	argument1.original_num = num;
	argument1.item_num = num;	
	argument1.txt_curr = manager_items.equip_list[# num, 0];
	
}