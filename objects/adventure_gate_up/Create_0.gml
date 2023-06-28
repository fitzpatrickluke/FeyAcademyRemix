event_inherited();

spr = spr_gate_up;
spr_num = 0;
colY = y+1;

mapx = x div 64;
mapy = (y+32) div 64;

var check = false;

switch(room)
{
	case adventure_flowerFieldsf1:
	if(manager_maps.pmaps_ff_f1[# mapy, mapx] >= 1) check = true; spr_num = 0;
	break;
	case adventure_flowerFieldsf2:
	if(manager_maps.pmaps_ff_f2[# mapy, mapx] >= 1) check = true; spr_num = 0;
	break;
	case adventure_flowerFieldsf3:
	if(manager_maps.pmaps_ff_f3[# mapy, mapx] >= 1) check = true; spr_num = 0;
	break;
	case adventure_flowerFieldsf4:
	if(manager_maps.pmaps_ff_f4[# mapy, mapx] >= 1) check = true; spr_num = 0;
	break;
	case adventure_willowWoodsf1:
	if(manager_maps.pmaps_ww_f1[# mapy, mapx] >= 1) check = true; spr_num = 0;
	break;
	case adventure_willowWoodsf2:
	if(manager_maps.pmaps_ww_f2[# mapy, mapx] >= 1) check = true; spr_num = 0;
	break;
	case adventure_willowWoodsf3:
	if(manager_maps.pmaps_ww_f3[# mapy, mapx] >= 1) check = true; spr_num = 0;
	break;
	case adventure_willowWoodsf4:
	if(manager_maps.pmaps_ww_f4[# mapy, mapx] >= 1) check = true; spr_num = 0;
	break;
	case adventure_autumnFallsf1:
	if(manager_maps.pmaps_af_f1[# mapy, mapx] >= 1) check = true; spr_num = 0;
	break;
	case adventure_autumnFallsf2:
	if(manager_maps.pmaps_af_f2[# mapy, mapx] >= 1) check = true; spr_num = 0;
	break;
	case adventure_autumnFallsf3:
	if(manager_maps.pmaps_af_f3[# mapy, mapx] >= 1) check = true; spr_num = 0;
	break;
	case adventure_autumnFallsf4:
	if(manager_maps.pmaps_af_f4[# mapy, mapx] >= 1) check = true; spr_num = 0;
	break;
	case adventure_snowflakePointf1:
	if(manager_maps.pmaps_sp_f1[# mapy, mapx] >= 1) check = true; spr_num = 0;
	break;
	case adventure_snowflakePointf2:
	if(manager_maps.pmaps_sp_f2[# mapy, mapx] >= 1) check = true; spr_num = 0;
	break;
	case adventure_snowflakePointf3:
	if(manager_maps.pmaps_sp_f3[# mapy, mapx] >= 1) check = true; spr_num = 0;
	break;
	case adventure_snowflakePointf4:
	if(manager_maps.pmaps_sp_f4[# mapy, mapx] >= 1) check = true; spr_num = 0;
	break;
	case adventure_sakuraStepsf1:
	if(manager_maps.pmaps_ss_f1[# mapy, mapx] >= 1) check = true; spr_num = 0;
	break;
	case adventure_sakuraStepsf2:
	if(manager_maps.pmaps_ss_f2[# mapy, mapx] >= 1) check = true; spr_num = 0;
	break;
	case adventure_sakuraStepsf3:
	if(manager_maps.pmaps_ss_f3[# mapy, mapx] >= 1) check = true; spr_num = 0;
	break;
	case adventure_sakuraStepsf4:
	if(manager_maps.pmaps_ss_f4[# mapy, mapx] >= 1) check = true; spr_num = 0;
	break;
	case adventure_feyTemplef1:
	if(manager_maps.pmaps_ft_f1[# mapy, mapx] >= 1) check = true; spr_num = 1;
	break;
	case adventure_feyTemplef2:
	if(manager_maps.pmaps_ft_f2[# mapy, mapx] >= 1) check = true; spr_num = 1;
	break;
	case adventure_feyTemplef3:
	if(manager_maps.pmaps_ft_f3[# mapy, mapx] >= 1) check = true; spr_num = 1;
	break;
	case adventure_feyTemplef4:
	if(manager_maps.pmaps_ft_f4[# mapy, mapx] >= 1) check = true; spr_num = 1;
	break;
	case adventure_ancientAbyssf1:
	if(manager_maps.pmaps_aa_f1[# mapy, mapx] >= 1) check = true; spr_num = 2;
	break;
	case adventure_ancientAbyssf2:
	if(manager_maps.pmaps_aa_f2[# mapy, mapx] >= 1) check = true; spr_num = 2;
	break;
	case adventure_ancientAbyssf3:
	if(manager_maps.pmaps_aa_f3[# mapy, mapx] >= 1) check = true; spr_num = 2;
	break;
	case adventure_ancientAbyssf4:
	if(manager_maps.pmaps_aa_f4[# mapy, mapx] >= 1) check = true; spr_num = 2;
	break;
	case adventure_endRainbowf1:
	if(manager_maps.pmaps_er_f1[# mapy, mapx] >= 1) check = true; spr_num = 3;
	break;
	case adventure_endRainbowf2:
	if(manager_maps.pmaps_er_f2[# mapy, mapx] >= 1) check = true; spr_num = 3;
	break;
	case adventure_endRainbowf3:
	if(manager_maps.pmaps_er_f3[# mapy, mapx] >= 1) check = true; spr_num = 3;
	break;
	case adventure_endRainbowf4:
	if(manager_maps.pmaps_er_f4[# mapy, mapx] >= 1) check = true; spr_num = 3;
	break;
}

if(check)
	instance_destroy(id);