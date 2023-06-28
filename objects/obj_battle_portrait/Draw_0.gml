/*
if(!menu_on) exit;
switch(manager_battle_remix.curr_battle_phase)
{
	case battle_phase.chooseP1: 
	if(manager_students.player_custom[0]==1)
		draw_student_portrait_battle(x,y,1);
	else
		draw_sprite_part( manager_students.master_student_1.spr,0,16,8,48,48,x,y);
	break;
	case battle_phase.chooseP2: 
	draw_sprite_part( manager_students.master_student_2.spr,0,16,8,48,48,x,y);
	break;
	case battle_phase.chooseP3: 
	draw_sprite_part( manager_students.master_student_3.spr,0,16,8,48,48,x,y); 
	break;
}
draw_sprite(spr_frame,1,x,y);
*/