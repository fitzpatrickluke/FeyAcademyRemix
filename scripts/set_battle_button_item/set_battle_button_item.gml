///@description set_battle_button_item
///@arg item_num
///@arg id
function set_battle_button_item(argument0, argument1)
{
	
	if(argument0 >= ds_list_size(manager_students.battle_items))
		instance_destroy(argument1);
	else
	{	
		var num = manager_students.battle_items[| argument0];
			
		argument1.item_list_num = argument0;
		argument1.item_num = num;
		argument1.button_txt = manager_items.item_list[# num, 0];
		
		
		switch(manager_items.item_list[# num, 1])
		{
			case items.warp:
			argument1.not_battle_item = true;
			break;
			
			case items.medicine:
			if((manager_battle_remix.unitHp_curr[0] == manager_battle_remix.unitHp[0]
			|| manager_battle_remix.unitHp_curr[0] <= 0)
			&&
			(manager_battle_remix.unitHp_curr[1] == manager_battle_remix.unitHp[1]
			|| manager_battle_remix.unitHp_curr[1] <= 0)
			&&
			(manager_battle_remix.unitHp_curr[2] == manager_battle_remix.unitHp[2]
			|| manager_battle_remix.unitHp_curr[2] <= 0))
				argument1.not_battle_item = true;
			
			break;
			
			case items.nectar:
			if((manager_battle_remix.unitMp_curr[0] == manager_battle_remix.unitMp[0])
			&&
			(manager_battle_remix.unitMp_curr[1] == manager_battle_remix.unitMp[1])
			&&
			(manager_battle_remix.unitMp_curr[2] == manager_battle_remix.unitMp[2]))
				argument1.not_battle_item = true;
			break;
			
			case items.dust:
			if((manager_battle_remix.unitHp_curr[0] > 0)
			&&
			(manager_battle_remix.unitHp_curr[1] > 0)
			&&
			(manager_battle_remix.unitHp_curr[2] > 0))
				argument1.not_battle_item = true;
			break;
			
			case items.antidote:
			if((manager_battle_remix.boolPetrify[0] == false)
			&&
			(manager_battle_remix.boolPetrify[1] == false)
			&&
			(manager_battle_remix.boolPetrify[2] == false))
				argument1.not_battle_item = true;
			break;
			
			case items.pure:
			if((manager_battle_remix.boolCurse[0] == false)
			&&
			(manager_battle_remix.boolCurse[1] == false)
			&&
			(manager_battle_remix.boolCurse[2] == false))
				argument1.not_battle_item = true;
			break;
			
			case items.orb:
			if((manager_battle_remix.boolBlind[0] == false)
			&&
			(manager_battle_remix.boolBlind[1] == false)
			&&
			(manager_battle_remix.boolBlind[2] == false))
				argument1.not_battle_item = true;
			break;
			
			case items.chime:
			if((manager_battle_remix.boolDeaf[0] == false)
			&&
			(manager_battle_remix.boolDeaf[1] == false)
			&&
			(manager_battle_remix.boolDeaf[2] == false))
				argument1.not_battle_item = true;
			break;
			
		}
		
	}
}