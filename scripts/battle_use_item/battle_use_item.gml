///@description battle_use_item
///@arg player_num
function battle_use_item(argument0)
{
	var num = argument0;
	var enmy = manager_battle_remix.unitTarget[num];
	var item = manager_battle_remix.boolItemUse[num];
	var grid = manager_items.item_list;
	
	with(manager_battle_remix)
	{
	switch(grid[# item, 1])
	{
		case items.medicine:
		var heal = 1;
		heal = unitHp_curr[enmy] * grid[# item, 2];
		heal = round(heal);
		unitHp_curr[enmy] += heal;
		if(unitHp_curr[enmy] > unitHp[enmy])
			unitHp_curr[enmy] = unitHp[enmy]
		break;
		case items.nectar:
		var heal = 1;
		heal = unitMp_curr[enmy] * grid[# item, 2];
		heal = round(heal);
		unitMp_curr[enmy] += heal;
		if(unitMp_curr[enmy] > unitMp[enmy])
			unitMp_curr[enmy] = unitMp[enmy]
		break;
		case items.dust:
		unitHp_curr[enmy] = 1;
		boolDead[enmy] = false;
		switch(enmy)
		{
			case 0: obj_battle_ply.alarm[0] = 15; 
			if(manager_battle_remix.unitHp_curr[1] > 0)
				obj_battle_ply.spr_num = obj_battle_ply2.spr_num; 
			else if(manager_battle_remix.unitHp_curr[2] > 0)
				obj_battle_ply.spr_num = obj_battle_ply3.spr_num; 
			break;
			case 1: obj_battle_ply.alarm[0] = 15;
			if(manager_battle_remix.unitHp_curr[0] > 0)
				obj_battle_ply.spr_num = obj_battle_ply.spr_num; 
			else if(manager_battle_remix.unitHp_curr[2] > 0)
				obj_battle_ply.spr_num = obj_battle_ply3.spr_num; 
			break;
			case 2: obj_battle_ply.alarm[0] = 15; 
			if(manager_battle_remix.unitHp_curr[1] > 0)
				obj_battle_ply.spr_num = obj_battle_ply2.spr_num; 
			else if(manager_battle_remix.unitHp_curr[0] > 0)
				obj_battle_ply.spr_num = obj_battle_ply.spr_num;  
			break;
		}
		break;
		case items.antidote:
		boolStatus[enmy] = false;
		boolPetrify[enmy] = false;
		boolPetrifyOn[enmy] = false;
		break;
		case items.chime:
		boolStatus[enmy] = false;
		boolDeaf[enmy] = false;
		boolDeafOn[enmy] = false;
		break;
		case items.orb:
		boolStatus[enmy] = false;
		boolBlind[enmy] = false;
		boolBlindOn[enmy] = false;
		break;
		case items.pure:
		boolStatus[enmy] = false;
		boolCurse[enmy] = false;
		boolCurseMult[enmy] = 1;
		break;
	}
	}
}