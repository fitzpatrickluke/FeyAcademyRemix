///@description set_battle_attack_sprite_new
///@arg student num
function set_battle_attack_sprite_new(argument0)
{
	var num = argument0;
	var enmy = manager_battle_remix.unitTarget[num];
	var spl = manager_battle_remix.battleSpells[num];
	var grid = manager_spells.player_spells;
	
	var spr = spr_atk_air;
	var elem = grid[# spl, 5];
	switch(elem)
	{
		case element.water: spr = spr_atk_water; break;
		case element.earth: spr = spr_atk_earth; break;
		case element.fire: spr = spr_atk_fire; break;
		case element.air: spr = spr_atk_air; break;
		case element.nature: spr = spr_atk_nature; break;
		case element.magic: spr = spr_atk_magic; break;
		case element.light: spr = spr_atk_light; break;
		case element.dark: spr = spr_atk_dark; break;
	}
	
	
	switch(spl)
	{
		case spells.attack: 
		break;
		case spells.heal:
		break;
		case spells.sheild: 
		break;
		case spells.reflect:
		break;
		case spells.charge_attack:
		break;
		case spells.charge_plus_hp: 
		break;
		case spells.multi_attack: 
		break;
		case spells.double_attack: 
		break;
		case spells.whip_attack:
		break;
		case spells.absorb_attack: 
		break;
		case spells.instant_death: 
		break;
		case spells.heal_status:
		break;
		case spells.revive:
		break;
		case spells.mag_up:
		break;
		case spells.def_up: 
		break;
		case spells.skl_up:
		break;
		case spells.spd_up:
		break;
		case spells.all_up: 
		break;
		case spells.double_buff: 
		break;
		case spells.steal_buff:
		break;
		case spells.mag_down:
		break;
		case spells.def_down:
		break;
		case spells.skl_down:
		break;
		case spells.spd_down:
		break;
		case spells.all_down:
		break;
		case spells.blind: 
		spr = spr_atk_blind;
		break;
		case spells.deaf: 
		spr = spr_atk_deaf;
		break;
		case spells.petrify: 
		spr = spr_atk_petrify;
		break;
		case spells.curse: 
		spr = spr_atk_curse;
		break;
		case spells.double_curse: 
		break;
		case spells.lose_hp:
		break;
		case spells.hp_phase_down: 
		break;
		case spells.heal_party:
		break;
		case spells.heal_enemy:
		break;
	}
}



/*
switch(spl)
	{
		case spells.attack: break;
		case spells.heal: break;
		case spells.sheild: break;
		case spells.reflect: break;
		case spells.charge_attack: break;
		case spells.charge_plus_hp: break;
		case spells.multi_attack: break;
		case spells.double_attack: break;
		case spells.whip_attack: break;
		case spells.absorb_attack: break;
		case spells.instant_death: break;
		case spells.heal_status: break;
		case spells.revive: break;
		case spells.mag_up: break;
		case spells.def_up: break;
		case spells.skl_up: break;
		case spells.spd_up: break;
		case spells.all_up: break;
		case spells.double_buff: break;
		case spells.steal_buff: break;
		case spells.mag_down: break;
		case spells.def_down: break;
		case spells.skl_down: break;
		case spells.spd_down: break;
		case spells.all_down: break;
		case spells.blind: break;
		case spells.deaf: break;
		case spells.petrify: break;
		case spells.curse: break;
		case spells.double_curse: break;
		case spells.lose_hp: break;
		case spells.hp_phase_down: break;
		case spells.heal_party: break;
		case spells.heal_enemy: break;
	}
	*/