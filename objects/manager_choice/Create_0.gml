scale = manager_students.master_scale;

yes_x = 24*scale;
yes_y = 80*scale;
no_x = 80*scale;
no_y = 80*scale;
choice_w = 56*scale;
choice_h = 16*scale;

spr_x = 24*scale;
spr_y = 48*scale;

txt_wx = spr_x + 8*scale;
txt_wy = spr_y + 8*scale;
txt_ww = 96 *scale;
if(room == loadRoom)
	txt = "Would you like to load this save file.";
else if(room == castle_office)
	txt = "Would you like to reset your transformation?";
else if(instance_exists(manager_castle_gate) && manager_castle_gate.gate_on)
	txt = "Do you want to enter " + get_stratum_name(manager_castle_gate.chosen_stratum) + "?";
else if(room == menuRoomRemix)
	txt = "Do you want to save the current game?";
else 
	txt = "Would you like to leave the labyrinth?";

spr = spr_choice_UI;

txt_x_1 = spr_x + 6*scale;
txt_x_2 = spr_x + 62*scale;
txt_y = spr_y + 38*scale;

mouseX = 0;
mouseY = 0;

on = true;

choice = -1;

pause = true;
alarm[0] = 30;
depth = -120;

