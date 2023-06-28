manager_students.curr_phase = phase.phase_end;

// main sprite
spr = spr_ending_UI;
spr_counter = 0;
spr2_counter = 1;
spr_o = 0;

// scale
scale = 2;

// student sprites
plx1 = 16;
plx2 = 32;
plx3 = 48;
plx4 = 64;
plx5 = 80;
plx6 = 96;
plx7 = 112;
plx8 = 128;
ply1 = 32;
ply2 = 80;
pl_counter = 0;

// timing
pl_spd = 15;
spr_spd = 240;
spr2_spd = 3;

// other
pl_on = true;
end_on = true;
new_on = false;
start_on = true;
start_o= 0;

// ending
px = 40;
py = 96;
pr = castle_bed;

// timing
//alarm[1] = pl_spd;
//alarm[2] = spr_spd;

room_change = true;
room_change_time = 30;
alarm[0] = room_change_time;

alarm[4] = 4;

depth = 0;
