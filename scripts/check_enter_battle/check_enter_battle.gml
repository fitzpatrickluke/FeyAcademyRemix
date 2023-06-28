///@description check_enter_battler
function check_enter_battle()
{
	var r = false;
		
	switch(room)
	{
		case adventure_flowerFieldsf1:
		case adventure_flowerFieldsf2:
		case adventure_flowerFieldsf3:
		case adventure_flowerFieldsf4:
		if(manager_students.curr_phase >= phase.phase_start)
			r = true;
		break;
		case adventure_willowWoodsf1:
		case adventure_willowWoodsf2:
		case adventure_willowWoodsf3:
		case adventure_willowWoodsf4:
		if(manager_students.curr_phase >= phase.phase_ww)
			r = true;
		break;
		case adventure_autumnFallsf1:
		case adventure_autumnFallsf2:
		case adventure_autumnFallsf3:
		case adventure_autumnFallsf4:
		if(manager_students.curr_phase >= phase.phase_af)
			r = true;
		break;
		case adventure_snowflakePointf1:
		case adventure_snowflakePointf2:
		case adventure_snowflakePointf3:
		case adventure_snowflakePointf4:
		if(manager_students.curr_phase >= phase.phase_sp)
			r = true;
		break;
		case adventure_sakuraStepsf1:
		case adventure_sakuraStepsf2:
		case adventure_sakuraStepsf3:
		case adventure_sakuraStepsf4:
		if(manager_students.curr_phase >= phase.phase_ss)
			r = true;
		break;
		case adventure_feyTemplef1:
		case adventure_feyTemplef2:
		case adventure_feyTemplef3:
		case adventure_feyTemplef4:
		if(manager_students.curr_phase >= phase.phase_ft)
			r = true;
		break;
		case adventure_ancientAbyssf1:
		case adventure_ancientAbyssf2:
		case adventure_ancientAbyssf3:
		case adventure_ancientAbyssf4:
		if(manager_students.final_aa)
			r = true;
		break;
		case adventure_endRainbowf1:
		case adventure_endRainbowf2:
		case adventure_endRainbowf3:
		case adventure_endRainbowf4:
		if(manager_students.final_er)
			r = true;
		break;
	}
	
	if(manager_students.curr_phase == phase.phase_end)
		r = true;
		
	return r;
}