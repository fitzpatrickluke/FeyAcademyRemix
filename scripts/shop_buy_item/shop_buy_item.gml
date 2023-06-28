///@description shop_buy_item
function shop_buy_item()
{
	var num = obj_shop_item_desc.item_num;
	
	ds_list_add(manager_students.battle_items, num);
	
	
	
	with(obj_shop_bag)
	{
		txt_bag_curr = string(ds_list_size(manager_students.battle_items));
		txt_myBag = txt_bag_curr + txt_curr_2 +txt_bag_size;
	}
	
	for(var i = 0; i < ds_list_size(manager_students.drop_items); i+=1)
	{
		if(i == obj_shop_item_req.req_item_1)
			manager_students.drop_items[| i] -= 1;
			
		if(i == obj_shop_item_req.req_item_2)
			manager_students.drop_items[| i] -= 1;
			
		if(i == obj_shop_item_req.req_item_3)
			manager_students.drop_items[| i] -= 1;
	}
	
	obj_shop_item_desc.menu_on = false;
	obj_shop_item_buy.menu_on = false;
	obj_shop_item_req.menu_on = false;
}