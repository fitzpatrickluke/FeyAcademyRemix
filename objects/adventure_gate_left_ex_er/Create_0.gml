event_inherited();

spr = spr_gate_left;
spr_num = 0;
colX = x-1;

mapx = (x+32) div 64;
mapy = y div 64;

var check = false;

if(manager_students.curr_phase <= phase.phase_er) 
	check = true; 
spr_num = 3;

if(check)
	instance_destroy(id);