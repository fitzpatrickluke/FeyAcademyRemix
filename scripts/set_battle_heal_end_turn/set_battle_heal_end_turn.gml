///@description set_battle_heal_end_turn
function set_battle_heal_end_turn()
{
	with(manager_battle_remix)
	{
		if(boolHealEndTurn[0] && unitHp_curr[0] > 0)
		{
			unitHp_curr[0] += boolHealEndTurnAmount[0];
			if(unitHp_curr[0] > unitHp[0])
				unitHp_curr[0] = unitHp[0];
		}
		
		if(boolHealEndTurn[1] && unitHp_curr[1] > 0)
		{
			unitHp_curr[1] += boolHealEndTurnAmount[1];
			if(unitHp_curr[1] > unitHp[1])
				unitHp_curr[1] = unitHp[1];
		}
		
		if(boolHealEndTurn[2] && unitHp_curr[2] > 0)
		{
			unitHp_curr[2] += boolHealEndTurnAmount[2];
			if(unitHp_curr[2] > unitHp[2])
				unitHp_curr[2] = unitHp[2];
		}
		
	
	}
}