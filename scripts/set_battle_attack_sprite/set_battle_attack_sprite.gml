///@description set_battle_attack_sprite
///@arg element
///@arg heal
///@arg enemey
///@arg spell_type
function set_battle_attack_sprite(argument0, argument1, argument2,argument3)
{
	var spr = spr_student_heal_air;
	var elem = argument0;
	var heal = argument1;
	var e = argument2;
	var splT = argument3;
	
	if(splT == spells.blind)
	{
		spr = spr_atk_blind;
	}
	else if(splT == spells.deaf)
	{
		spr = spr_atk_deaf;
	}
	else if(splT == spells.petrify)
	{
		spr = spr_atk_petrify;
	}
	else if(splT == spells.curse)
	{
		spr = spr_atk_curse;
	}
	else
	{
	if(heal)
	{
		switch(elem)
		{
			case element.water: spr = spr_student_heal_water; break;
			case element.earth: spr = spr_student_heal_earth; break;
			case element.fire: spr = spr_student_heal_fire; break;
			case element.air: spr = spr_student_heal_air; break;
			case element.nature: spr = spr_student_heal_nature; break;
			case element.magic: spr = spr_student_heal_magic; break;
			case element.light: spr = spr_student_heal_light; break;
			case element.dark: spr = spr_student_heal_dark; break;
		}
	}
	else
	{
		if(e)
		{
			switch(elem)
			{
				case element.water: spr = spr_enemy_attack_water; break;
				case element.earth: spr = spr_enemy_attack_earth; break;
				case element.fire: spr = spr_enemy_attack_fire; break;
				case element.air: spr = spr_enemy_attack_air; break;
				case element.nature: spr = spr_enemy_attack_nature; break;
				case element.magic: spr = spr_enemy_attack_magic; break;
				case element.light: spr = spr_enemy_attack_light; break;
				case element.dark: spr = spr_enemy_attack_dark; break;
			}
		}
		else
		{
			switch(elem)
			{
				case element.water: spr = spr_student_attack_water; break;
				case element.earth: spr = spr_student_attack_earth; break;
				case element.fire: spr = spr_student_attack_fire; break;
				case element.air: spr = spr_student_attack_air; break;
				case element.nature: spr = spr_student_attack_nature; break;
				case element.magic: spr = spr_student_attack_magic; break;
				case element.light: spr = spr_student_attack_light; break;
				case element.dark: spr = spr_student_attack_dark; break;
			}
		}
	}
	}
	
	return spr;
}