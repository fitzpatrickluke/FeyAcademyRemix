destroy = false;

switch(room)
{
	case adventure_willowWoodsf1:
	if(manager_students.curr_phase >= phase.phase_ww) 
		destroy = true; 
	break;
	case adventure_autumnFallsf1:
	if(manager_students.curr_phase >= phase.phase_af) 
		destroy = true; 
	break;
	case adventure_snowflakePointf1:
	if(manager_students.curr_phase >= phase.phase_sp) 
		destroy = true; 
	break;
	case adventure_sakuraStepsf1:
	if(manager_students.curr_phase >= phase.phase_ss) 
		destroy = true; 
	break;
	case adventure_feyTemplef1:
	if(manager_students.curr_phase >= phase.phase_ft) 
		destroy = true; 
	break;
	case adventure_ancientAbyssf1:
	if(manager_students.final_aa || manager_students.curr_phase >= phase.phase_end) 
		destroy = true; 
	break;
	case adventure_endRainbowf1:
	if(manager_students.final_er || manager_students.curr_phase >= phase.phase_end) 
		destroy = true; 
	break;
}

if(destroy)
	instance_destroy(id);


txt[0] = "You can not explore this startum yet.";
txt_length = 1;

txt_on = false;

alarm[0] = 15;

depth = -10;
