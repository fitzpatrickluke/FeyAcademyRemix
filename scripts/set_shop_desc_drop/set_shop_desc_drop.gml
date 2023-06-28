///@desciption_set_shop_desc_drop
///@arg item_num
function set_shop_desc_drop(argument0)
{
	var num = argument0;
	
	obj_shop_drop_desc.txt_name = manager_items.equip_list[# num, 0];
	obj_shop_drop_desc.txt_desc = string_wrap(get_equip_desc(num),obj_shop_drop_desc.txt_desc_w);
	obj_shop_drop_desc.item_num = num;
	
	obj_shop_drop_desc.menu_on = true;
	obj_shop_drop_req.menu_on = true;
	
	
	obj_shop_drop_req.req_item_1 = manager_items.equip_list[# num, 3];
	obj_shop_drop_req.req_item_2 = manager_items.equip_list[# num, 4];
	obj_shop_drop_req.req_item_3 = manager_items.equip_list[# num, 5];

	obj_shop_drop_req.txt_req_1 = get_drop_name(manager_items.equip_list[# num, 3]);
	obj_shop_drop_req.txt_req_2 = get_drop_name(manager_items.equip_list[# num, 4]);
	obj_shop_drop_req.txt_req_3 = get_drop_name(manager_items.equip_list[# num, 5]);
	
	
	if(check_drop_buy())
		obj_shop_drop_buy.menu_on = true;
	else
		obj_shop_drop_buy.menu_on = false;
		
}