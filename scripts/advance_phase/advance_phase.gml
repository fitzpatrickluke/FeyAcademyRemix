///@descirption advance phase
function advance_phase()
{
	show_debug_message("ADVANCE PHASE");
	with(manager_students)
	{
		if(boss_num == 0 && curr_phase == phase.phase_ff)
			curr_phase = phase.phase_ww;
		else if(boss_num == 1 && curr_phase == phase.phase_ww)
			curr_phase = phase.phase_af;
		else if(boss_num == 2 && curr_phase == phase.phase_af)
			curr_phase = phase.phase_sp;
		else if(boss_num == 3 && curr_phase == phase.phase_sp)
			curr_phase = phase.phase_ss;
		else if(boss_num == 4 && curr_phase == phase.phase_ss)
			curr_phase = phase.phase_ft;
		//else if(bosses[6] && bosses[7] && bosses[8] && bosses[9]
		//&& curr_phase == phase.phase_aa)
		//	curr_phase = phase.phase_aa2;
		else if(boss_num == 10 && (curr_phase == phase.phase_aa2 || curr_phase == phase.phase_aa))
			curr_phase = phase.phase_end;
		//else if(bosses[6] && bosses[7] && bosses[8] && bosses[9]
		//&& curr_phase == phase.phase_er)
		//	curr_phase = phase.phase_er2;
		else if(boss_num == 10 && (curr_phase == phase.phase_er2 || curr_phase == phase.phase_er))
			curr_phase = phase.phase_end;
	}
}