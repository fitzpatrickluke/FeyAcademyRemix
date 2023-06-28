///@description get_equip_desc
///@arg item_num
function get_equip_desc(argument0)
{
	var num = argument0;
	var txt = "TEST TEXT";
	var grid = manager_items.equip_list;
	
	switch(grid[# num, 1])
	{
		case equip.attack_up:
			txt = "Attacks deal " + string(grid[# num, 2]) + " extra damage.";
		case equip.mag_up:
			txt = "Increase MAG stat by " + string(grid[# num, 2]) + ".";
		break;
		case equip.def_up:
			txt = "Increase DEF stat by " + string(grid[# num, 2]) + ".";
		break;
		case equip.skl_up:
			txt = "Increase SKL stat by " + string(grid[# num, 2]) + ".";
		break;
		case equip.spd_up:
			txt = "Increase SPD stat by " + string(grid[# num, 2]) + ".";
		break;
		case equip.mag_def_up:
			txt = "Increase MAG and DEF stat by " + string(grid[# num, 2]) + ".";
		break;
		case equip.mag_spd_up:
			txt = "Increase MAG and SPD stat by " + string(grid[# num, 2]) + ".";
		break;
		case equip.def_spd_up:
			txt = "Increase DEF and SPD stat by " + string(grid[# num, 2]) + ".";
		break;
		case equip.hp_up:
			txt = "Increase HP stat by " + string(grid[# num, 2]) + ".";
		break;
		case equip.mp_up:
			txt = "Increase MP stat by " + string(grid[# num, 2]) + ".";
		break;
		
		case equip.res_water:
			if(grid[# num, 2] == 1)
				txt = "Reduce WATER elemental damage taken.";
			if(grid[# num, 2] == 2)
				txt = "Greatly reduce WATER elemental damage taken.";
		break;
		case equip.res_earth:
			if(grid[# num, 2] == 1)
				txt = "Reduce EARTH elemental damage taken.";
			if(grid[# num, 2] == 2)
				txt = "Greatly reduce EARTH elemental damage taken.";
		break;
		case equip.res_fire:
			if(grid[# num, 2] == 1)
				txt = "Reduce FIRE elemental damage taken.";
			if(grid[# num, 2] == 2)
				txt = "Greatly reduce FIRE elemental damage taken.";
		break;
		case equip.res_air:
			if(grid[# num, 2] == 1)
				txt = "Reduce AIR elemental damage taken.";
			if(grid[# num, 2] == 2)
				txt = "Greatly reduce AIR elemental damage taken.";
		break;
		case equip.res_nature:
			if(grid[# num, 2] == 1)
				txt = "Reduce NATURE elemental damage taken.";
			if(grid[# num, 2] == 2)
				txt = "Greatly reduce NATURE elemental damage taken.";
		break;
		case equip.res_magic:
			if(grid[# num, 2] == 1)
				txt = "Reduce MAGIC elemental damage taken.";
			if(grid[# num, 2] == 2)
				txt = "Greatly reduce MAGIC elemental damage taken.";
		break;
		case equip.res_light:
			if(grid[# num, 2] == 1)
				txt = "Reduce LIGHT elemental damage taken.";
			if(grid[# num, 2] == 2)
				txt = "Greatly reduce LIGHT elemental damage taken.";
		break;
		case equip.res_dark:
			if(grid[# num, 2] == 1)
				txt = "Reduce DARK elemental damage taken.";
			if(grid[# num, 2] == 2)
				txt = "Greatly reduce DARK elemental damage taken.";
		break;
		
		case equip.res_petrify:
			if(grid[# num, 2] == 1)
				txt = "Reduce chance of being inflicted by the PETRIFY status.";
			if(grid[# num, 2] == 2)
				txt = "Greatly reduce chance of being inflicted by the PETRIFY status.";
		break;
		case equip.res_curse:
			if(grid[# num, 2] == 1)
				txt = "Reduce chance of being inflicted by the CURSE status.";
			if(grid[# num, 2] == 2)
				txt = "Greatly reduce chance of being inflicted by the CURSE status.";
		break;
		case equip.res_blind:
			if(grid[# num, 2] == 1)
				txt = "Reduce chance of being inflicted by the BLIND status.";
			if(grid[# num, 2] == 2)
				txt = "Greatly reduce chance of being inflicted by the BLIND status.";
		break;
		case equip.res_deaf:
			if(grid[# num, 2] == 1)
				txt = "Reduce chance of being inflicted by the DEAF status.";
			if(grid[# num, 2] == 2)
				txt = "Greatly reduce chance of being inflicted by the DEAF status.";
		break;
		
		case equip.buff_water:
			if(grid[# num, 2] == 1)
				txt = "Increase WATER elemental attack magic.";
			if(grid[# num, 2] == 2)
				txt = txt = "Greatly increase WATER elemental attack magic.";
		break;
		case equip.buff_earth:
			if(grid[# num, 2] == 1)
				txt = "Increase EARTH elemental attack magic.";
			if(grid[# num, 2] == 2)
				txt = txt = "Greatly increase EARTH elemental attack magic.";
		break;
		case equip.buff_fire:
			if(grid[# num, 2] == 1)
				txt = "Increase FIRE elemental attack magic.";
			if(grid[# num, 2] == 2)
				txt = txt = "Greatly increase FIRE elemental attack magic.";
		break;
		case equip.buff_air:
			if(grid[# num, 2] == 1)
				txt = "Increase AIR elemental attack magic.";
			if(grid[# num, 2] == 2)
				txt = txt = "Greatly increase AIR elemental attack magic.";
		break;
		case equip.buff_nature:
			if(grid[# num, 2] == 1)
				txt = "Increase NATURE elemental attack magic.";
			if(grid[# num, 2] == 2)
				txt = txt = "Greatly increase NATURE elemental attack magic.";
		break;
		case equip.buff_magic:
			if(grid[# num, 2] == 1)
				txt = "Increase MAGIC elemental attack magic.";
			if(grid[# num, 2] == 2)
				txt = txt = "Greatly increase MAGIC elemental attack magic.";
		break;
		case equip.buff_light:
			if(grid[# num, 2] == 1)
				txt = "Increase LIGHT elemental attack magic.";
			if(grid[# num, 2] == 2)
				txt = txt = "Greatly increase LIGHT elemental attack magic.";
		break;
		case equip.buff_dark:
			if(grid[# num, 2] == 1)
				txt = "Increase DARK elemental attack magic.";
			if(grid[# num, 2] == 2)
				txt = txt = "Greatly increase DARK elemental attack magic.";
		break;
		
		case equip.buff_heal:
			if(grid[# num, 2] == 1)
				txt = "Increase healing magic.";
			if(grid[# num, 2] == 2)
				txt = txt = "Greatly increase healing magic.";
		break;
		case equip.buff_shield:
			if(grid[# num, 2] == 1)
				txt = "Increase shield magic.";
			if(grid[# num, 2] == 2)
				txt = txt = "Greatly increase shield magic.";
		break;
		
		case equip.special_flee:
			txt = "Always succeed in fleeing from battle.";
		break;
		case equip.special_heal:
			if(grid[# num, 2] == 1)
				txt = "Heal 10% HP at the end of each turn during battle";
			if(grid[# num, 2] == 2)
				txt = "Heal 20% of HP at the end of each turn during battle";
		break;
		case equip.special_sklToMag:
			txt = "During battle, all effects that use the MAG stat will use the SKL stat instead.";
		break;
		case equip.special_encounterOff:
			txt = "Never run into enemy encounters while exploring the stratums.";
		break;
		case equip.special_instaKill:
			txt = "Increases the chance of the Instant Kill effect succeeding.";
		break;
		
		case equip.ultimate_heal:
			txt = "DURING BATTLE ONLY, healing spells heall all HP";
		break;
		case equip.ultimate_sklToMag:
			txt = "During battle, all effects that use the MAG stat will use the SKL stat instead.";
			txt += " Increase SKL stat by " + string(grid[# num, 2]) + ".";
		break;
		case equip.ultimate_fey:
			txt = "Gain the LIGHT sub type.";
			txt += " Increase DEF stat by " + string(grid[# num, 2]) + ".";
		break;
		case equip.ultimate_dragon:
			txt = "Gain the LIGHT sub type.";
			txt += " Increase DEF stat by " + string(grid[# num, 2]) + ".";
		break;
		case equip.ultimate_immune:
			txt = "Effects of stat decreases do not effect the student.";
		break;
		case equip.ultimate_absorb:
			txt = "Increases HP healed by ABSORB spells by 50%.";
			txt += " Increase DEF stat by " + string(grid[# num, 2]) + ".";
		break;
		case equip.ultimate_heal_spd:
			txt = "DURING BATTLE ONLY, healing spells heal 50% more HP";
			txt += " Increase SPD stat by " + string(grid[# num, 2]) + ".";
		break;
		case equip.ultimate_heal_mag:
			txt = "DURING BATTLE ONLY, healing spells heal 50% more HP";
			txt += " Increase SPD stat by " + string(grid[# num, 2]) + ".";
		break;
		case equip.ultimate_stat:
			txt = "DURING BATTLE ONLY, healing spells heal the whole party.";
			txt += " Also during battle, after using a healing spell, all stats increase by 1.";
		break;
		case equip.ultimate_reflect:
			txt = "Reflection spells always reflect 200% of damage recieved.";
		break;

		
	}
	
	
	switch(item_num)
	{
		case 89:
		txt += " Only equippable by Hana.";
		break;
		case 90:
		txt += " Only equippable by Lapis.";
		break;
		case 91:
		txt += " Only equippable by Fernando.";
		break;
		case 92:
		txt += " Only equippable by Crystal.";
		break;
		case 93:
		txt += " Only equippable by Blanche.";
		break;
		case 94:
		txt += " Only equippable by Chip.";
		break;
		case 95:
		txt += " Only equippable by Bridgit.";
		break;
		case 96:
		txt += " Only equippable by Enya.";
		break;
		case 97:
		txt += " Only equippable by Glenn.";
		break;
		case 98:
		txt += " Only equippable by Arianna.";
		break;
		case 99:
		txt += " Only equippable by Cindy.";
		break;
		case 100:
		txt += " Only equippable by Gunter.";
		break;
		case 101:
		txt += " Only equippable by Talia.";
		break;
		case 102:
		txt += " Only equippable by Tigris.";
		break;
		case 103:
		txt += " Only equippable by Basil.";
		break;
		case 104:
		txt += " Only equippable by Vivian.";
		break;
		case 105:
		txt += " Only equippable by Nyx.";
		break;
		case 106:
		txt += " Only equippable by Damien.";
		break;
		case 107:
		txt += " Only equippable by Paige.";
		break;
		case 108:
		txt += " Only equippable by Maria.";
		break;
		case 109:
		txt += " Only equippable by Chris.";
		break;
		case 110:
		txt += " Only equippable by Tasha.";
		break;
		case 111:
		txt += " Only equippable by Gina.";
		break;
		case 112:
		txt += " Only equippable by Rocky.";
		break;
	}
	
	return txt;

}