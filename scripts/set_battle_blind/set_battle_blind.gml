///@description set_battle_blind
///@arg num
function set_battle_blind(argument0)
{
	var num = argument0;
	
	if(manager_battle_remix.boolBlind[num] && manager_battle_remix.boolAttack[num])
	{
		// calculate
		var on = false;
		switch(manager_spells.player_spells[# manager_battle_remix.battleSpells[num], 1])
		{
			case spells.attack:
			case spells.charge_attack:
			case spells.charge_plus_hp:
			case spells.multi_attack:
			case spells.double_attack:
			case spells.whip_attack:
			case spells.absorb_attack:
			case spells.instant_death:
			case spells.blind:
			case spells.deaf:
			case spells.petrify:
			case spells.curse:
			case spells.double_curse:
			case spells.hp_phase_down:
			on = true;
			break;
		}
		
		// set
		if(on)
		{
			manager_battle_remix.boolAttack[num] = false;
			manager_battle_remix.boolDefend[num] = false;
			manager_battle_remix.boolSpecial[num] = false;
			manager_battle_remix.boolFlee[num] = false;
			
			manager_battle_remix.boolBlindOn[num] = true;
		}
		

	}
}