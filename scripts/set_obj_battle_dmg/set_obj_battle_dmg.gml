///@description set_obj_battle_dmg
///@arg dmg
///@arg num(location)
///@arg spell
///@arg spell_sub_num
function set_obj_battle_dmg(argument0, argument1, argument2, argument3)
{
	var d = argument0;
	var num = argument1;
	var spl = argument2;
	var spl2 = argument3;
	
	with(obj_battle_damage)
	{
		if(num == obj_student_num)
		{
			switch(manager_spells.player_spells[# spl, spl2])
			{
				case spells.attack:
				case spells.charge_attack:
				case spells.charge_plus_hp:
				case spells.multi_attack:
				case spells.double_attack:
				case spells.whip_attack:
				case spells.absorb_attack:
				txt_y_dcr = 1;
				txt_y = y*scale;
				txt = d;
				break;
				case spells.instant_death:
				txt_y_dcr = 1;
				txt_y = y*scale;
				txt = manager_battle_remix.unitHp_curr[num];
				break;
				case spells.heal:
				txt_y_dcr = -1;
				txt_y = y*scale+text_time;
				txt = d;
				break;
				case spells.mag_up:
				txt_y_dcr = -1;
				txt_y = y*scale+text_time;
				txt = "MAG";
				txt_col = c_blue;
				break;
				case spells.def_up:
				txt_y_dcr = -1;
				txt_y = y*scale+text_time;
				txt = "DEF";
				txt_col = c_blue;
				break;
				case spells.spd_up:
				txt_y_dcr = -1;
				txt_y = y*scale+text_time;
				txt = "SPD";
				txt_col = c_blue;
				break;
				case spells.skl_up:
				txt_y_dcr = -1;
				txt_y = y*scale+text_time;
				txt = "SKL";
				txt_col = c_blue;
				break;
				case spells.all_up:
				case spells.sacrifice:
				txt_y_dcr = -1;
				txt_y = y*scale+text_time;
				txt = "ALL";
				txt_col = c_blue;
				break;
				case spells.mag_down:
				txt_y_dcr = 1;
				txt_y = y*scale;
				txt = "MAG"
				txt_col = c_red;
				break;
				case spells.def_down:
				txt_y_dcr = 1;
				txt_y = y*scale;
				txt = "DEF"
				txt_col = c_red;
				break;
				case spells.spd_down:
				txt_y_dcr = 1;
				txt_y = y*scale;
				txt = "SPD"
				txt_col = c_red;
				break;
				case spells.skl_down:
				txt_y_dcr = 1;
				txt_y = y*scale;
				txt = "SKL"
				txt_col = c_red;
				break;
				case spells.all_down:
				txt_y_dcr = 1;
				txt_y = y*scale;
				txt = "ALL"
				txt_col = c_red;
				break;
	
			}
			if(spl2 == 3)
			{
				txt_y += 32;
			}
			txt_on = true;
			alarm[0] = text_time;
		}
	}
}