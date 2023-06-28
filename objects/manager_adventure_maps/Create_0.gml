map_off = false;
if(!manager_students.mon_on)
{
	manager_adventure.encounter_on = false;
	manager_adventure.encounter_num = 1;
	spr_mon_num = 1;
}

enum maps
{
	null = 0,
	basic = 1,
	stairs = 2,
	hole = 3,
	ice = 4,
	cloud = 5,
	warp = 6
}

scale = manager_students.master_scale;

spr = spr_map_UI;
spr_x_1 = 416;
spr_x_2 = 426;
spr_y_1 = 352;
spr_y_2 = 362;

spr_w = 0;
spr_w_1 = 192;
spr_w_2 = 182;

spr_box_x_1 = 432;
spr_box_x_2 = 442;
spr_box_y_1 = 368;
spr_box_y_2 = 378;

spr_num = 0;
spr_num_2 = 2;
spr_x = spr_x_1;
spr_y = spr_y_1;
spr_box_x = spr_box_x_1;
spr_box_y = spr_box_y_1;

box_w_1 = 16;
box_w_2 = 10;
box_w_3 = 6;

map_size_1 = 10;
map_size_2 = 16;
map_size_3 = 25;

map_size = map_size_1;
box_w = box_w_1;

mapx = 0;
mapy = 0;
map_curr = 0;

map_1_on = false;
map_2_on = false;
map_3_on = false;

switch(room)
{
	case adventure_flowerFieldsf1:
	map_curr = manager_maps.pmaps_ff_f1;
	map_1_on = true;
	map_2_on = false;
	map_3_on = false;
	break;
	case adventure_flowerFieldsf2:
	map_curr = manager_maps.pmaps_ff_f2;
	map_1_on = true;
	map_2_on = false;
	map_3_on = false;
	break;
	case adventure_flowerFieldsf3:
	map_curr = manager_maps.pmaps_ff_f3;
	map_1_on = true;
	map_2_on = false;
	map_3_on = false;
	break;
	case adventure_flowerFieldsf4:
	map_curr = manager_maps.pmaps_ff_f4;
	map_1_on = true;
	map_2_on = false;
	map_3_on = false;
	break;
	case adventure_willowWoodsf1:
	map_curr = manager_maps.pmaps_ww_f1;
	map_1_on = false;
	map_2_on = true;
	map_3_on = false;
	break;
	case adventure_willowWoodsf2:
	map_curr = manager_maps.pmaps_ww_f2;
	map_1_on = false;
	map_2_on = true;
	map_3_on = false;
	break;
	case adventure_willowWoodsf3:
	map_curr = manager_maps.pmaps_ww_f3;
	map_1_on = false;
	map_2_on = true;
	map_3_on = false;
	break;
	case adventure_willowWoodsf4:
	map_curr = manager_maps.pmaps_ww_f4;
	map_1_on = false;
	map_2_on = true;
	map_3_on = false;
	break;
	case adventure_autumnFallsf1:
	map_curr = manager_maps.pmaps_af_f1;
	map_1_on = false;
	map_2_on = true;
	map_3_on = false;
	break;
	case adventure_autumnFallsf2:
	map_curr = manager_maps.pmaps_af_f2;
	map_1_on = false;
	map_2_on = true;
	map_3_on = false;
	break;
	case adventure_autumnFallsf3:
	map_curr = manager_maps.pmaps_af_f3;
	map_1_on = false;
	map_2_on = true;
	map_3_on = false;
	break;
	case adventure_autumnFallsf4:
	map_curr = manager_maps.pmaps_af_f4;
	map_1_on = false;
	map_2_on = true;
	map_3_on = false;
	break;
	case adventure_snowflakePointf1:
	map_curr = manager_maps.pmaps_sp_f1;
	map_1_on = false;
	map_2_on = true;
	map_3_on = false;
	break;
	case adventure_snowflakePointf2:
	map_curr = manager_maps.pmaps_sp_f2;
	map_1_on = false;
	map_2_on = true;
	map_3_on = false;
	break;
	case adventure_snowflakePointf3:
	map_curr = manager_maps.pmaps_sp_f3;
	map_1_on = false;
	map_2_on = true;
	map_3_on = false;
	break;
	case adventure_snowflakePointf4:
	map_curr = manager_maps.pmaps_sp_f4;
	map_1_on = false;
	map_2_on = true;
	map_3_on = false;
	break;
	case adventure_sakuraStepsf1:
	map_curr = manager_maps.pmaps_ss_f1;
	map_1_on = false;
	map_2_on = true;
	map_3_on = false;
	break;
	case adventure_sakuraStepsf2:
	map_curr = manager_maps.pmaps_ss_f2;
	map_1_on = false;
	map_2_on = true;
	map_3_on = false;
	break;
	case adventure_sakuraStepsf3:
	map_curr = manager_maps.pmaps_ss_f3;
	map_1_on = false;
	map_2_on = true;
	map_3_on = false;
	break;
	case adventure_sakuraStepsf4:
	map_curr = manager_maps.pmaps_ss_f4;
	map_1_on = false;
	map_2_on = true;
	map_3_on = false;
	break;
	case adventure_feyTemplef1:
	map_curr = manager_maps.pmaps_ft_f1;
	map_1_on = false;
	map_2_on = true;
	map_3_on = false;
	break;
	case adventure_feyTemplef2:
	map_curr = manager_maps.pmaps_ft_f2;
	map_1_on = false;
	map_2_on = true;
	map_3_on = false;
	break;
	case adventure_feyTemplef3:
	map_curr = manager_maps.pmaps_ft_f3;
	map_1_on = false;
	map_2_on = true;
	map_3_on = false;
	break;
	case adventure_feyTemplef4:
	map_curr = manager_maps.pmaps_ft_f4;
	map_1_on = false;
	map_2_on = true;
	map_3_on = false;
	break;
	case adventure_ancientAbyssf1:
	map_curr = manager_maps.pmaps_aa_f1;
	map_1_on = false;
	map_2_on = false;
	map_3_on = true;
	break;
	case adventure_ancientAbyssf2:
	map_curr = manager_maps.pmaps_aa_f2;
	map_1_on = false;
	map_2_on = false;
	map_3_on = true;
	break;
	case adventure_ancientAbyssf3:
	map_curr = manager_maps.pmaps_aa_f3;
	map_1_on = false;
	map_2_on = false;
	map_3_on = true;
	break;
	case adventure_ancientAbyssf4:
	map_curr = manager_maps.pmaps_aa_f4;
	map_1_on = false;
	map_2_on = false;
	map_3_on = true;
	break;
	case adventure_endRainbowf1:
	map_curr = manager_maps.pmaps_er_f1;
	map_1_on = false;
	map_2_on = false;
	map_3_on = true;
	break;
	case adventure_endRainbowf2:
	map_curr = manager_maps.pmaps_er_f2;
	map_1_on = false;
	map_2_on = false;
	map_3_on = true;
	break;
	case adventure_endRainbowf3:
	map_curr = manager_maps.pmaps_er_f3;
	map_1_on = false;
	map_2_on = false;
	map_3_on = true;
	break;
	case adventure_endRainbowf4:
	map_curr = manager_maps.pmaps_er_f4;
	map_1_on = false;
	map_2_on = false;
	map_3_on = true;
	break;
}

if(map_1_on)
{
	spr_num = 0;
	spr_num_2 = 2;
	spr_x = spr_x_1;
	spr_y = spr_y_1;
	spr_box_x = spr_box_x_1;
	spr_box_y = spr_box_y_1;
	map_size = map_size_1;
	box_w = box_w_1;
	spr_w = spr_w_1;
}
else if(map_2_on)
{
	spr_num = 0;
	spr_num_2 = 3;
	spr_x = spr_x_1;
	spr_y = spr_y_1;
	spr_box_x = spr_box_x_1;
	spr_box_y = spr_box_y_1;
	map_size = map_size_2;
	box_w = box_w_2;
	spr_w = spr_w_1;
}
else if(map_3_on)
{
	spr_num = 1;
	spr_num_2 = 4;
	spr_x = spr_x_2;
	spr_y = spr_y_2;
	spr_box_x = spr_box_x_2;
	spr_box_y = spr_box_y_2;
	map_size = map_size_3;
	box_w = box_w_3;
	spr_w = spr_w_2;
}

spr_mon = enemy_full_mini;
mon_on_x = 128*scale;
mon_on_y = 8*scale;
mon_on_w = 24*scale;
mon_on_h = 24*scale;
spr_mon_num = 1;

mouseX = 0;
mouseY = 0;

room_change = false;
room_change_time = 30;

player_on = true;
alarm[0] = 30;