///@description set_battle_enemy_spell
function set_battle_enemy_spell()
{
	show_debug_message("set_battle_enemy_spell");
	show_debug_message(manager_battle_remix.enemyChooseSpellCheck);
	
	manager_battle_remix.enemyChooseSpellCheck += 1;
	if(manager_battle_remix.enemyChooseSpellCheck > 100)
	{
		manager_battle_remix.battleSpells[3] = 0;
		manager_battle_remix.unitTarget[3] = 0;
		manager_battle_remix.enemyChooseSpellCheck = 0;
		manager_battle_remix.curr_battle_phase = battle_phase.setTurn;
		set_battle_turn();
		return;
	}
	
	var proceed = false;
	
	// set spell to use
	var eSpells = obj_battle_enmy.enemy_spells;
	var numSpell = eSpells[  irandom(array_length(eSpells)-1)];
	var eUnit = -1;
	
	switch(manager_spells.player_spells[# numSpell, 1])
	{
		case spells.attack:
		case spells.charge_attack:
		case spells.charge_plus_hp:
		case spells.multi_attack:
		case spells.double_attack:
		case spells.whip_attack:
		case spells.absorb_attack:
		case spells.instant_death:
		case spells.hp_phase_down:
		case spells.steal_buff:
		case spells.mag_down:
		case spells.def_down:
		case spells.skl_down:
		case spells.spd_down:
		
		
		var hp0 = manager_battle_remix.unitHp_curr[0];
		var hp1 = manager_battle_remix.unitHp_curr[1];
		var hp2 = manager_battle_remix.unitHp_curr[2];
		
		// only ply 1 alive
		if(hp1 <= 0 && hp2 <= 0)
			eUnit = 0;
		// only ply 2 alive
		else if(hp0 <= 0 && hp2 <= 0)
			eUnit = 1;
		// only ply 3 alive
		else if(hp0 <= 0 && hp1 <= 0)
			eUnit = 2;
		// only ply 1 is dead
		else if(hp0 <= 0)
		{
			var n = irandom(1);
			if(n == 0) eUnit = 1;
			else eUnit = 2;
		}
		// only ply 2 is dead
		else if(hp1 <= 0)
		{
			var n = irandom(1);
			if(n == 0) eUnit = 0;
			else eUnit = 2;
		}
		// only ply 3 is dead
		else if(hp2 <= 0)
		{
			var n = irandom(1);
			if(n == 0) eUnit = 0;
			else eUnit = 1;
		}
		// all are alive
		else
		{
			eUnit = irandom(2);
		}
		
		proceed = true;
		
		break;
		
		case spells.heal:
		
		if(manager_battle_remix.unitHp_curr[3] == manager_battle_remix.unitHp[3])
		{
			set_battle_enemy_spell();
		}
		else
		{
			eUnit = 3;
			proceed = true;
		}
		
		break;
		
		case spells.heal_status:
		
		if(manager_battle_remix.boolStatus[3] == false)
		{
			set_battle_enemy_spell();
		}
		else
		{
			eUnit = 3;
			proceed = true;
		}
		
		break;
		
		case spells.sheild:
		case spells.reflect:
		
		eUnit = 3;
		proceed = true;
		
		break;
		
		case spells.mag_up:
		case spells.def_up:
		case spells.skl_up:
		case spells.spd_up:
		case spells.all_up:
		case spells.double_buff:
		
		eUnit = 3;
		proceed = true;
		
		break;
		
		case spells.blind:
		case spells.deaf:
		case spells.petrify:
		case spells.curse:
		
		if(manager_battle_remix.boolStatus[0] && manager_battle_remix.boolStatus[0] 
		&& manager_battle_remix.boolStatus[0])
		{
			set_battle_enemy_spell();
		}
		else
		{
			eUnit = irandom(2);
			while(manager_battle_remix.boolStatus[eUnit])
			{
				eUnit = irandom(2);
			}
			proceed = true;
		}
		
		break;
		
		case spells.double_curse:
		
		if(manager_battle_remix.boolCurse[0] == false && manager_battle_remix.boolCurse[0] == false 
		&& manager_battle_remix.boolCurse[0] == false)
		{
			set_battle_enemy_spell();
		}
		else
		{
			eUnit = irandom(2);
			while(manager_battle_remix.boolCurse[eUnit] == false)
			{
				eUnit = irandom(2);
			}
			proceed = true;
		}
		break;

	}
	
	// one last check for 0 HP
	if(eUnit != -1)
	{
	if(manager_battle_remix.unitHp_curr[eUnit] <= 0)
	{
		set_battle_attack();
		proceed = false;
	}
	}

	show_debug_message(numSpell)
	if(proceed)
	{
		show_debug_message("ATTACKING: " + string(eUnit));	
		manager_battle_remix.battleSpells[3] = numSpell;
		manager_battle_remix.unitTarget[3] = eUnit;
		manager_battle_remix.curr_battle_phase = battle_phase.setTurn;
		manager_battle_remix.boolAttack[3] = true;
		set_battle_attack();
	}
}