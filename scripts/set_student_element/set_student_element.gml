///@description set_student_element
///@arg element
///@arg power_name
///@arg power_element
///@arg master_spells
///@arg spr_player_atk
///@arg spr_player_hel
function set_student_element(argument0,argument1,argument2,argument3,argument4,argument5)
{
	var e = argument0;
	var pn = argument1;
	var pe = argument2;
	var s = argument3;
	var spra = argument4;
	var sprh = argument5;
	
	manager_students.player_element = e;
	with(manager_students.master_student_1)
	{
		power_name = pn;
		power_element = pe;
		spells_master = s;
		spells_level[0] = spells_master[0];
		spr_attack = spra;
		spr_heal = sprh;
	}
}