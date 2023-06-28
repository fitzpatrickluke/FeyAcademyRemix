///@description spell_level_up
///@arg student
function student_spell_level_up(argument0)
{
	var s = argument0;
	switch(s.level)
	{
		case 2: s.spells_level[1] = s.spells_master[1]; break;
		case 4: s.spells_level[2] = s.spells_master[2]; break;
		case 6: s.spells_level[3] = s.spells_master[3]; break;
		case 10: s.spells_level[4] = s.spells_master[4]; break;
		case 12: s.spells_level[5] = s.spells_master[5]; break;
		case 16: s.spells_level[6] = s.spells_master[6]; break;
		case 20: s.spells_level[7] = s.spells_master[7]; break;
		case 24: s.spells_level[8] = s.spells_master[8]; break;
		case 26: s.spells_level[9] = s.spells_master[9]; break;
		case 30: s.spells_level[10] = s.spells_master[10]; break;
		case 34: s.spells_level[11] = s.spells_master[11]; break;		
	}
	set_menu_spell_heal();
	return s;
}