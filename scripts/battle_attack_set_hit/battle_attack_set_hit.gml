///@description battle_attack_set_hit
///@arg student num
function battle_attack_set_hit(argument0)
{
	var num = argument0;
	
	var enmy = manager_battle_remix.unitTarget[num];
	var spl = manager_battle_remix.battleSpells[num];
	var grid = manager_spells.player_spells;
	
	var onTrue = true;
	var onSpr = spr_attack_hit;
	
	switch(grid[# spl, 1])
	{
		case spells.attack:
		case spells.charge_attack:
		case spells.charge_plus_hp:
		case spells.multi_attack:
		case spells.double_attack:
		case spells.whip_attack:
		case spells.absorb_attack:
		case spells.instant_death:
		case spells.steal_buff:
		case spells.mag_down:
		case spells.def_down:
		case spells.spd_down:
		case spells.skl_down:
		case spells.all_down:
		case spells.blind:
		case spells.deaf:
		case spells.petrify:
		case spells.curse:
		case spells.double_curse:
		case spells.lose_hp:
		case spells.hp_phase_down:
		case spells.heal_enemy:
		if(obj_battle_feildElement.nova_on)
		{
			onSpr = spr_attack_hit_nova;
			obj_battle_feildElement.nova_on = false;
		}
		else
			onSpr = spr_attack_hit;
		break;
		case spells.heal:
		case spells.sheild:
		case spells.reflect:
		case spells.heal_status:
		case spells.revive:
		case spells.mag_up:
		case spells.def_up:
		case spells.skl_up:
		case spells.spd_up:
		case spells.all_up:
		case spells.double_buff:
		case spells.heal_party:
		onSpr = spr_attack_hit_heal;
		break;
	}
	
	if(num == enmy)
	{
		onTrue = false;
	}
	
	if(grid[# spl, 1] == spells.heal_party)
	{
		onTrue = false;
		switch(num)
		{
			case 0:
			obj_battle_sprite_hit_ply2.attack_on = true;
			obj_battle_sprite_hit_ply2.spr = onSpr;
			obj_battle_sprite_hit_ply2.alarm[1] = obj_battle_sprite_hit_ply2.on_time;
			obj_battle_sprite_hit_ply3.attack_on = true;
			obj_battle_sprite_hit_ply3.spr = onSpr;
			obj_battle_sprite_hit_ply3.alarm[1] = obj_battle_sprite_hit_ply3.on_time;
			break;
			case 1:
			obj_battle_sprite_hit_ply1.attack_on = true;
			obj_battle_sprite_hit_ply1.spr = onSpr;
			obj_battle_sprite_hit_ply1.alarm[1] = obj_battle_sprite_hit_ply1.on_time;
			obj_battle_sprite_hit_ply3.attack_on = true;
			obj_battle_sprite_hit_ply3.spr = onSpr;
			obj_battle_sprite_hit_ply3.alarm[1] = obj_battle_sprite_hit_ply3.on_time;
			break;
			case 2:
			obj_battle_sprite_hit_ply1.attack_on = true;
			obj_battle_sprite_hit_ply1.spr = onSpr;
			obj_battle_sprite_hit_ply1.alarm[1] = obj_battle_sprite_hit_ply1.on_time;
			obj_battle_sprite_hit_ply2.attack_on = true;
			obj_battle_sprite_hit_ply2.spr = onSpr;
			obj_battle_sprite_hit_ply2.alarm[1] = obj_battle_sprite_hit_ply2.on_time;
			break;
		}
		
	}
	
	if(onTrue)
	{
		switch(enmy)
		{
			case 0: 
			obj_battle_sprite_hit_ply1.attack_on = true;
			obj_battle_sprite_hit_ply1.spr = onSpr;
			obj_battle_sprite_hit_ply1.alarm[1] = obj_battle_sprite_hit_ply1.on_time;
			break;
			case 1: 
			obj_battle_sprite_hit_ply2.attack_on = true;
			obj_battle_sprite_hit_ply2.spr = onSpr;
			obj_battle_sprite_hit_ply2.alarm[1] = obj_battle_sprite_hit_ply2.on_time;
			break;
			case 2: 
			obj_battle_sprite_hit_ply3.attack_on = true;
			obj_battle_sprite_hit_ply3.spr = onSpr;
			obj_battle_sprite_hit_ply3.alarm[1] = obj_battle_sprite_hit_ply3.on_time;
			break;
			case 3: 
			obj_battle_sprite_hit_enmy.attack_on = true;
			obj_battle_sprite_hit_enmy.spr = onSpr;
			obj_battle_sprite_hit_enmy.alarm[1] = obj_battle_sprite_hit_enmy.on_time;
			break;
		}
	}
	
}