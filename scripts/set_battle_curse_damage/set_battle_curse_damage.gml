///@description set_battle_curse_damage
function set_battle_curse_damage()
{
	with(manager_battle_remix)
	{
		var dmgPly = 0.2;
		var dmgEnmy = 0.1;
		if(obj_battle_feildElement.spr_field == fieldElement.poison)
		{
			for(var i = 0; i < 4; i+=1)
			{
				manager_battle_remix.boolCurseMult[i] *= 1.2;
			}
		}
		
		if(boolCurse[0])
		{
			unitHp_curr[0] -= unitHp[0]*dmgPly*boolCurseMult[0];
			if(unitHp_curr[0] <= 0)
				unitHp_curr[0] = 0;
		}
		if(boolCurse[1])
		{
			unitHp_curr[1] -= unitHp[1]*dmgPly*boolCurseMult[1];
			show_debug_message(string(unitHp_curr[1]) + " -= " + string(unitHp[1]*dmgPly*boolCurseMult[1]));
			show_debug_message(string(unitHp[1]) + "*" + string(dmgPly) +  "*" + string(boolCurseMult[1]))
			
			if(unitHp_curr[1] <= 0)
				unitHp_curr[1] = 0;
		}
		if(boolCurse[2])
		{
			unitHp_curr[2] -= unitHp[2]*dmgPly*boolCurseMult[2];
			if(unitHp_curr[2] <= 0)
				unitHp_curr[2] = 0;
		}
		if(boolCurse[3])
		{
			unitHp_curr[3] -= unitHp[3]*dmgEnmy*boolCurseMult[3];
			if(unitHp_curr[3] <= 0)
				unitHp_curr[3] = 0;
		}
	}
}