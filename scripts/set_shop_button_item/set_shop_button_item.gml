///@description set_shop_button_item
///@arg item_num
///@arg ids
function set_shop_button_item(argument0, argument1)
{
	var num = argument0;
	
	argument1.item_num = num;
	argument1.txt_curr = manager_items.item_list[# num, 0];
}