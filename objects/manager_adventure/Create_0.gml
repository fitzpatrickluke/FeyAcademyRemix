student_spr_num = 0;
student_right = false;

spr_w = 16;
spr_h = 24;

spr_body_counter = 0;
spr_top_counter = 7;
spr_bot_counter = 11;
spr_shoe_counter = 15;

movement_speed_x = 0;
movement_speed_y = 0;
movement_on = false;

animation_speed = 15;

x = manager_students.explore_start_x;
y = manager_students.explore_start_y;

mapx = x div 64;
mapy = y div 64;


switch(room)
{
	case adventure_flowerFieldsf1:
	manager_maps.pmaps_ff_f1[# mapy, mapx] = true;
	break;
	case adventure_flowerFieldsf2:
	manager_maps.pmaps_ff_f2[# mapy, mapx] = true;
	break;
	case adventure_flowerFieldsf3:
	manager_maps.pmaps_ff_f3[# mapy, mapx] = true;
	break;
	case adventure_flowerFieldsf4:
	manager_maps.pmaps_ff_f4[# mapy, mapx] = true;
	break;
	case adventure_willowWoodsf1:
	manager_maps.pmaps_ww_f1[# mapy, mapx] = true;
	break;
	case adventure_willowWoodsf2:
	manager_maps.pmaps_ww_f2[# mapy, mapx] = true;
	break;
	case adventure_willowWoodsf3:
	manager_maps.pmaps_ww_f3[# mapy, mapx] = true;
	break;
	case adventure_willowWoodsf4:
	manager_maps.pmaps_ww_f4[# mapy, mapx] = true;
	break;
	case adventure_autumnFallsf1:
	manager_maps.pmaps_af_f1[# mapy, mapx] = true;
	break;
	case adventure_autumnFallsf2:
	manager_maps.pmaps_af_f2[# mapy, mapx] = true;
	break;
	case adventure_autumnFallsf3:
	manager_maps.pmaps_af_f3[# mapy, mapx] = true;
	break;
	case adventure_autumnFallsf4:
	manager_maps.pmaps_af_f4[# mapy, mapx] = true;
	break;
	case adventure_snowflakePointf1:
	manager_maps.pmaps_sp_f1[# mapy, mapx] = true;
	break;
	case adventure_snowflakePointf2:
	manager_maps.pmaps_sp_f2[# mapy, mapx] = true;
	break;
	case adventure_snowflakePointf3:
	manager_maps.pmaps_sp_f3[# mapy, mapx] = true;
	break;
	case adventure_snowflakePointf4:
	manager_maps.pmaps_sp_f4[# mapy, mapx] = true;
	break;
	case adventure_sakuraStepsf1:
	manager_maps.pmaps_ss_f1[# mapy, mapx] = true;
	break;
	case adventure_sakuraStepsf2:
	manager_maps.pmaps_ss_f2[# mapy, mapx] = true;
	break;
	case adventure_sakuraStepsf3:
	manager_maps.pmaps_ss_f3[# mapy, mapx] = true;
	break;
	case adventure_sakuraStepsf4:
	manager_maps.pmaps_ss_f4[# mapy, mapx] = true;
	break;
	case adventure_feyTemplef1:
	manager_maps.pmaps_ft_f1[# mapy, mapx] = true;
	break;
	case adventure_feyTemplef2:
	manager_maps.pmaps_ft_f2[# mapy, mapx] = true;
	break;
	case adventure_feyTemplef3:
	manager_maps.pmaps_ft_f3[# mapy, mapx] = true;
	break;
	case adventure_feyTemplef4:
	manager_maps.pmaps_ft_f4[# mapy, mapx] = true;
	break;
	case adventure_ancientAbyssf1:
	manager_maps.pmaps_aa_f1[# mapy, mapx] = true;
	break;
	case adventure_ancientAbyssf2:
	manager_maps.pmaps_aa_f2[# mapy, mapx] = true;
	break;
	case adventure_ancientAbyssf3:
	manager_maps.pmaps_aa_f3[# mapy, mapx] = true;
	break;
	case adventure_ancientAbyssf4:
	manager_maps.pmaps_aa_f4[# mapy, mapx] = true;
	break;
	case adventure_endRainbowf1:
	manager_maps.pmaps_er_f1[# mapy, mapx] = true;
	break;
	case adventure_endRainbowf2:
	manager_maps.pmaps_er_f2[# mapy, mapx] = true;
	break;
	case adventure_endRainbowf3:
	manager_maps.pmaps_er_f3[# mapy, mapx] = true;
	break;
	case adventure_endRainbowf4:
	manager_maps.pmaps_er_f4[# mapy, mapx] = true;
	break;
}



alarm[1] = animation_speed;

encounter_num = manager_students.explore_enmy_count
encounter_on = true;
encounter_chance = 3;
encounter_rate = 60;
alarm[2] = encounter_rate;

pause = false;

depth = 0;

ice_on = false;
// 0 - null
// 1 - up
// 2 - down
// 3 - right
// 4 - left
ice_move = 0;

move_spd = 2;