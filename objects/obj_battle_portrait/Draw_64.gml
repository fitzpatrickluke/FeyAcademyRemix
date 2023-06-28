if(!menu_on) exit;
switch(manager_battle_remix.curr_battle_phase)
{
	case battle_phase.chooseP1:
	
	if(manager_students.player_custom[0]==1)
		draw_student_portrait_battle(x*scale,y*scale,1);
	else
		draw_sprite_part(manager_students.master_student_1.spr,0,16*scale,8*scale,48*scale,48*scale,x*scale,y*scale)
		
	
	break;
	case battle_phase.chooseP2: 
	//draw_sprite_part( manager_students.master_student_2.spr,0,16,8,48,48,x,y);
	draw_sprite_part(manager_students.master_student_2.spr,0,16*scale,8*scale,48*scale,48*scale,x*scale,y*scale)
	break;
	case battle_phase.chooseP3: 
	//draw_sprite_part( manager_students.master_student_3.spr,0,16,8,48,48,x,y); 
	draw_sprite_part(manager_students.master_student_3.spr,0,16*scale,8*scale,48*scale,48*scale,x*scale,y*scale)
	break;
}
draw_sprite_ext(spr_frame,1,x*scale,y*scale,scale,scale,0,c_white,1);