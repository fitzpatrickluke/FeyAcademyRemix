///@description shop_buy_equip
function shop_buy_equip()
{
	var num = obj_shop_drop_desc.item_num;
	
	manager_students.equip_items[| num] += 1;
	
	
	for(var i = 0; i < ds_list_size(manager_students.drop_items); i+=1)
	{
		if(i == obj_shop_drop_req.req_item_1)
			manager_students.drop_items[| i] -= 1;
			
		if(i == obj_shop_drop_req.req_item_2)
			manager_students.drop_items[| i] -= 1;
			
		if(i == obj_shop_drop_req.req_item_3)
			manager_students.drop_items[| i] -= 1;
	}
	
	obj_shop_drop_desc.menu_on = false;
	obj_shop_drop_buy.menu_on = false;
	obj_shop_drop_req.menu_on = false;
}