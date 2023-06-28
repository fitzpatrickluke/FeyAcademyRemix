if(manager_battle_remix.boolCurse[player_num])
	spr_col = c_fuchsia;
if(manager_battle_remix.boolPetrify[player_num])
	spr_col = c_yellow;
if(manager_battle_remix.boolBlind[player_num])
	spr_col = c_blue;
if(manager_battle_remix.boolDeaf[player_num])
	spr_col = c_gray;
if(manager_battle_remix.unitHp_curr[player_num] <= 0)
{
	spr_col = c_black;
	alarm[0] = -1;
	spr_num = 0;
}
else
{
	spr_col = c_white;
}

if(!choosingPlayer) exit;

if(position_meeting(mouse_x, mouse_y, id))
{

	if(manager_battle_remix.curr_unit_item_num != -1)
	{
		if(manager_items.item_list[# manager_battle_remix.boolItemUse[manager_battle_remix.curr_unit_item_num], 1] == items.dust)
		{
			if(manager_battle_remix.unitHp_curr[player_num] > 0) 
				exit;
		}
		else if(manager_items.item_list[# manager_battle_remix.boolItemUse[manager_battle_remix.curr_unit_item_num], 1] == items.medicine)
		{
			if(manager_battle_remix.unitHp_curr[player_num] <= 0) 
				exit;
			if(manager_battle_remix.unitHp_curr[player_num] == manager_battle_remix.unitHp[player_num]) 
				exit;
		}
		else if(manager_items.item_list[# manager_battle_remix.boolItemUse[manager_battle_remix.curr_unit_item_num], 1] == items.nectar)
		{
			if(manager_battle_remix.unitMp_curr[player_num] == manager_battle_remix.unitMp[player_num]) 
				exit;
		}
		else if(manager_items.item_list[# manager_battle_remix.boolItemUse[manager_battle_remix.curr_unit_item_num], 1] == items.antidote)
		{
			if(manager_battle_remix.boolPetrify[player_num] == false) 
				exit;
		}
		else if(manager_items.item_list[# manager_battle_remix.boolItemUse[manager_battle_remix.curr_unit_item_num], 1] == items.pure)
		{
			if(manager_battle_remix.boolCurse[player_num] == false) 
				exit;
		}
		else if(manager_items.item_list[# manager_battle_remix.boolItemUse[manager_battle_remix.curr_unit_item_num], 1] == items.orb)
		{
			if(manager_battle_remix.boolBlind[player_num] == false) 
				exit;
		}
		else if(manager_items.item_list[# manager_battle_remix.boolItemUse[manager_battle_remix.curr_unit_item_num], 1] == items.chime)
		{
			if(manager_battle_remix.boolDeaf[player_num] == false) 
				exit;
		}
	}
	else
	{
		if(manager_battle_remix.unitHp_curr[player_num] <= 0) 
			exit;
	}
    choosePlayerOn = true;
}
else
	choosePlayerOn = false;