///@description set_battle_field_effect_bbs
///@arg dmg
///@arg element
function set_battle_field_effect_bbs(argument0, argument1)
{
	var dmg = argument0;
	if(obj_battle_feildElement.spr_field == fieldElement.burning)
	{
		var mult = 1;
		switch(argument1)
		{
			case element.water: mult = 1.5; break;
			case element.earth: mult = 0.5; break;
			case element.fire: mult = 1.2; break;
			case element.air: mult = 1.5; break;
			case element.nature: mult = 0.8; break;
			case element.magic: mult = 1; break;
			case element.light: mult = 1; break;
			case element.dark: mult = 1; break;
		}
		return (dmg*mult);
	}
	else if(obj_battle_feildElement.spr_field == fieldElement.budding)
	{
		var mult = 1;
		switch(argument1)
		{
			case element.water: mult = 0.8; break;
			case element.earth: mult = 0.5; break;
			case element.fire: mult = 1.5; break;
			case element.air: mult = 1.5; break;
			case element.nature: mult = 1.2; break;
			case element.magic: mult = 1; break;
			case element.light: mult = 1; break;
			case element.dark: mult = 1; break;
		}
		return (dmg*mult);
	}
	else if(obj_battle_feildElement.spr_field == fieldElement.steam)
	{
		var mult = 1;
		switch(argument1)
		{
			case element.water: mult = 1.2; break;
			case element.earth: mult = 0.5; break;
			case element.fire: mult = 0.8; break;
			case element.air: mult = 1.5; break;
			case element.nature: mult = 1.5; break;
			case element.magic: mult = 1; break;
			case element.light: mult = 1; break;
			case element.dark: mult = 1; break;
		}
		return (dmg*mult);
	}
	else
		return dmg;
}