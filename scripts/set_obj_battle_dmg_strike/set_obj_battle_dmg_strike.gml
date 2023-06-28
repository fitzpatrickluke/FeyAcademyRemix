///@description set_obj_battle_dmg_strike
///@arg dmg
///@arg num(location)
function set_obj_battle_dmg_strike(argument0, argument1)
{
	var d = argument0;
	var num = argument1;
	with(obj_battle_damage)
	{
		if(num == obj_student_num)
		{
			txt_y_dcr = 1;
			txt_y = y*scale;
			txt = d;
			txt_on = true;
			alarm[0] = text_time;
		}
	}
}