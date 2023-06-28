///@description check_drop_buy
function check_drop_buy()
{
	var i1 = obj_shop_drop_req.req_item_1;
	var i2 = obj_shop_drop_req.req_item_2;
	var i3 = obj_shop_drop_req.req_item_3;
	
	var check1 = false;
	var check2 = false;
	var check3 = false;
	
	// different cases
	// i1 == i2 == i3 (requires three of same)
	// i1 == i2 != i3 (requires 2 of same, one dif)
	// i1 != i2 == i3
	// i1 == i3 != i2
	// i1 != i2 != i3 (requires 3 different)
	/*
	if(i1 == i2 == i3)
	{
		for(var i = 1; i < ds_list_size(manager_students.drop_items); i+=1)
		{
			if((i == i1) && (manager_students.drop_items[| i] >= 3))
			{
				check1 = true;
			}
		}
	}
	else if(i1 == i2 && i2 != i3)
	{
		for(var i = 1; i < ds_list_size(manager_students.drop_items); i+=1)
		{
			if((i == i1) && (manager_students.drop_items[| i] >= 2))
			{
				check1 = true;
			}
			if((i == i3) && (manager_students.drop_items[| i] > 0))
			{
				check3 = true;
			}
		}
	}
	else if(i1 == i3 && i3 != i2)
	{
		for(var i = 1; i < ds_list_size(manager_students.drop_items); i+=1)
		{
			if((i == i1) && (manager_students.drop_items[| i] >= 2))
			{
				check1 = true;
			}
			if((i == i2) && (manager_students.drop_items[| i] > 0))
			{
				check3 = true;
			}
		}
	}
	else if(i2 == i3 && i3 != i1)
	{
		for(var i = 1; i < ds_list_size(manager_students.drop_items); i+=1)
		{
			if((i == i2) && (manager_students.drop_items[| i] >= 2))
			{
				check1 = true;
			}
			if((i == i1) && (manager_students.drop_items[| i] > 0))
			{
				check3 = true;
			}
		}
	}
	else if(i1 != i2 && i2 != i3 && i3 != i1)
	{
		for(var i = 1; i < ds_list_size(manager_students.drop_items); i+=1)
		{
			if((i == i1) && (manager_students.drop_items[| i] > 0))
			{
				check1 = true;
			}
			if((i == i2) && (manager_students.drop_items[| i] > 0))
			{
				check2 = true;
			}
			if((i == i3) && (manager_students.drop_items[| i] > 0))
			{
				check3 = true;
			}
		}
	}
	*/
	
	for(var i = 1; i < ds_list_size(manager_students.drop_items); i+=1)
	{
		if((i == i1) && (manager_students.drop_items[| i] > 0))
		{
			check1 = true;
		}
		if((i == i2) && (manager_students.drop_items[| i] > 0))
		{
			check2 = true;
		}
		if((i == i3) && (manager_students.drop_items[| i] > 0))
		{
			check3 = true;
		}
	}
	
	
	if(i1 == 0 || i1 == -1)
		check1 = true;
	if(i2 == 0 || i2 == -1)
		check2 = true;
	if(i3 == 0 || i3 == -1)
		check3 = true;
		
	var checkf = false;
	if(check1 && check2 && check3)
		checkf = true;
	
	return checkf;
}