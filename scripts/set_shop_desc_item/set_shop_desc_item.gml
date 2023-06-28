///@desciption_set_shop_desc_item
///@arg item_num
function set_shop_desc_item(argument0)
{
	var num = argument0;
	
	obj_shop_item_desc.txt_name = manager_items.item_list[# num, 0];
	obj_shop_item_desc.txt_desc =  string_wrap( manager_items.item_list[# num, 3], obj_shop_item_desc.txt_desc_w);
	obj_shop_item_desc.item_num = num;
	
	obj_shop_item_desc.menu_on = true;
	obj_shop_item_req.menu_on = true;
	
	
	obj_shop_item_req.req_item_1 = manager_items.item_list[# num, 5];
	obj_shop_item_req.req_item_2 = manager_items.item_list[# num, 6];
	obj_shop_item_req.req_item_3 = manager_items.item_list[# num, 7];

	obj_shop_item_req.txt_req_1 = get_drop_name(manager_items.item_list[# num, 5]);
	obj_shop_item_req.txt_req_2 = get_drop_name(manager_items.item_list[# num, 6]);
	obj_shop_item_req.txt_req_3 = get_drop_name(manager_items.item_list[# num, 7]);
	
	
	if(
	(ds_list_size(manager_students.battle_items) < obj_shop_bag.bag_size)
	&& (check_item_buy())
	)
		obj_shop_item_buy.menu_on = true;
	else
		obj_shop_item_buy.menu_on = false;
		
}