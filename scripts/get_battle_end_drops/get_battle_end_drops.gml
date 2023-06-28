///@description get_battle_end_drops
function get_battle_end_drops()
{
	
	// use this to add items to batle
	var i1 = manager_enemy.enemy_list[# manager_battle_remix.enemy_num, 14];
	var i2 = manager_enemy.enemy_list[# manager_battle_remix.enemy_num, 15];

	// two cases:
	// drop 1 item: 100%
	// drop 2 items: 60%, 40%
	
	if(i2 == drops.empty)
	{
		// start with 1 because want to ignore empty items
		for(var i = 1; i < ds_list_size(manager_students.drop_items); i+=1)
		{
			if(i == i1)
			{
				if(manager_students.drop_items[| i] < 100)
					manager_students.drop_items[| i] += 1;
			}
		}
	}
	else
	{
		var checkNum = irandom(99);
		var myI = i1;
		if(checkNum < 40)
			myI = i1;
		// start with 1 because want to ignore empty items
		for(var i = 1; i < ds_list_size(manager_students.drop_items); i+=1)
		{
			if(i == myI)
			{
				if(manager_students.drop_items[| i] < 100)
					manager_students.drop_items[| i] += 1;
			}
		}
	}



}