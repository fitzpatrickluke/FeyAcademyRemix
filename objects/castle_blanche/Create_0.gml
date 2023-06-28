ph = phase.phase_start;
	if(manager_students.master_student_1 == student_blanche)
	instance_destroy(id);
txt[0] = "";
txt_length = 1;

var j = 0;
var tl = manager_text.txt_blanche_length;
var t = manager_text.txt_blanche;

switch(manager_students.curr_phase)
{
	case phase.phase_start:
	txt_length = tl[phase.phase_start];
	for(var i = 0; i < txt_length; i+=1)
		txt[i] = t[|i];
	break;
	
	case phase.phase_ff:
	txt_length = tl[phase.phase_ff];
	for(var c = 0; c < phase.phase_ff; c+=1)
		j += tl[c];
	for(var i = 0; i < txt_length; i+=1)
		txt[i] = t[|j+i];
	break;
	
	case phase.phase_ww:
	txt_length = tl[phase.phase_ww];
	for(var c = 0; c < phase.phase_ww; c+=1)
		j += tl[c];
	for(var i = 0; i < txt_length; i+=1)
		txt[i] = t[|j+i];
	break;
	
	case phase.phase_af:
	txt_length = tl[phase.phase_af];
	for(var c = 0; c < phase.phase_af; c+=1)
		j += tl[c];
	for(var i = 0; i < txt_length; i+=1)
		txt[i] = t[|j+i];
	break;
	
	case phase.phase_sp:
	txt_length = tl[phase.phase_sp];
	for(var c = 0; c < phase.phase_sp; c+=1)
		j += tl[c];
	for(var i = 0; i < txt_length; i+=1)
		txt[i] = t[|j+i];
	break;
	
	case phase.phase_ss:
	txt_length = tl[phase.phase_ss];
	for(var c = 0; c < phase.phase_ss; c+=1)
		j += tl[c];
	for(var i = 0; i < txt_length; i+=1)
		txt[i] = t[|j+i];
	break;
	
	case phase.phase_ft:
	txt_length = tl[phase.phase_ft];
	for(var c = 0; c < phase.phase_ft; c+=1)
		j += tl[c];
	for(var i = 0; i < txt_length; i+=1)
		txt[i] = t[|j+i];
	break;
	
	case phase.phase_aa:
	txt_length = tl[phase.phase_aa];
	for(var c = 0; c < phase.phase_aa; c+=1)
		j += tl[c];
	for(var i = 0; i < txt_length; i+=1)
		txt[i] = t[|j+i];
	break;
	
	case phase.phase_aa2:
	txt_length = tl[phase.phase_aa];
	for(var c = 0; c < phase.phase_aa; c+=1)
		j += tl[c];
	for(var i = 0; i < txt_length; i+=1)
		txt[i] = t[|j+i];
	break;
	
	case phase.phase_er:
	txt_length = tl[phase.phase_er];
	for(var c = 0; c < phase.phase_er; c+=1)
		j += tl[c];
	j -= tl[phase.phase_aa];
	for(var i = 0; i < txt_length; i+=1)
		txt[i] = t[|j+i];
	break;
	
	case phase.phase_er2:
	txt_length = tl[phase.phase_er];
	for(var c = 0; c < phase.phase_er; c+=1)
		j += tl[c];
	j -= tl[phase.phase_aa];
	for(var i = 0; i < txt_length; i+=1)
		txt[i] = t[|j+i];
	break;
	
	case phase.phase_end:
	txt_length = tl[phase.phase_end];
	for(var c = 0; c < phase.phase_end; c+=1)
		j += tl[c];
	j -= tl[phase.phase_aa]; j -= tl[phase.phase_er];
	for(var i = 0; i < txt_length; i+=1)
		txt[i] = t[|j+i];
	break;
}

spr_R = spr_blanch_walk_right;
spr_L = spr_blanch_walk_left;
spr = spr_R;

spr_full = student_blanche.spr;

spr_talk = spr_indicator_conv;
spr_talk_counter = 0;


txt_on = false;

alarm[0] = 15;

depth = -10;
