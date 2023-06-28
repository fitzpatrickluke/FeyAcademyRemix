///@description draw_student_portrait
///@arg x
///@arg y
///@arg scale
function draw_student_portrait(argument0,argument1,argument2)
{
	var xx = argument0;
	var yy = argument1;
	var scl = argument2;

	var spr_hair = spr_port_cc_hair;
	var spr_hair_2 = spr_port_cc_hair_2;
	var spr_body = spr_port_cc_body;
	var spr_bang = spr_port_cc_bang;
	var spr_bang_2 = spr_port_cc_bang_2;
	var spr_top = spr_port_cc_top;
	var spr_top_2 = spr_port_cc_top_2;
	var spr_acc = spr_port_cc_acc;
	var spr_acc_2 = spr_port_cc_acc_2;
	
	if(manager_students.player_gender[0] == 1)
	{
		spr_hair = spr_port_cc_beard;
		spr_hair_2 = spr_port_cc_beard_2;
		spr_body = spr_port_cc_body_m;
		spr_bang = spr_port_cc_hair_m;
		spr_bang_2 = spr_port_cc_hair_m_2;
		spr_top = spr_port_cc_top_m;
		spr_top_2 = spr_port_cc_top_m_2;
		spr_acc = spr_port_cc_acc_m;
		spr_acc_2 = spr_port_cc_acc_m_2;
	}
	
	with(manager_students)
	{
		// hair 
		//draw_sprite_part_ext(spr,2,spr_num*spr_hair_num,spr_num*spr_hair_col_num,spr_num,spr_num,xx,yy,scl,scl,c_white,1);
		if(manager_students.player_gender[0] == 0)
		{
		if(spr_hair_col_num < 8)
			draw_sprite_part_ext(spr_hair,spr_hair_num,0,320*spr_hair_col_num,320,320,xx,yy,scl,scl,c_white,1);
		else
			draw_sprite_part_ext(spr_hair_2,spr_hair_num,0,320*(spr_hair_col_num-8),320,320,xx,yy,scl,scl,c_white,1);
		}
		//body
		//draw_sprite_part_ext(spr,1,spr_num*spr_top_num,spr_num*spr_body_num,spr_num,spr_num,xx,yy,scl,scl,c_white,1);
		draw_sprite_ext(spr_body,spr_body_num,xx,yy,scl,scl,0,c_white,1)
		
		// face
		//draw_sprite_part_ext(spr,0,spr_num*spr_body_num,0,spr_num,spr_num,xx,yy,scl,scl,c_white,1);
		
		// eyes
		//draw_sprite_part_ext(spr,4,0,spr_num*spr_eye_num,spr_num,spr_num,xx,yy,scl,scl,c_white,1);
		
		// top
		//draw_sprite_part_ext(spr,5,spr_num*spr_top_num,spr_num*spr_top_col_num,spr_num,spr_num,xx,yy,scl,scl,c_white,1);
		if(spr_top_col_num < 8)
			draw_sprite_part_ext(spr_top,spr_top_num,0,320*spr_top_col_num,320,320,xx,yy,scl,scl,c_white,1);
		else
			draw_sprite_part_ext(spr_top_2,spr_top_num,0,320*(spr_top_col_num-8),320,320,xx,yy,scl,scl,c_white,1);

		// bangs
		//draw_sprite_part_ext(spr,3,spr_num*spr_bang_num,spr_num*spr_hair_col_num,spr_num,spr_num,xx,yy,scl,scl,c_white,1);
		if(spr_hair_col_num < 8)
			draw_sprite_part_ext(spr_bang,spr_bang_num,0,320*spr_hair_col_num,320,320,xx,yy,scl,scl,c_white,1);
		else
			draw_sprite_part_ext(spr_bang_2,spr_bang_num,0,320*(spr_hair_col_num-8),320,320,xx,yy,scl,scl,c_white,1);

		// beard
		if(manager_students.player_gender[0] == 1)
		{
		if(spr_hair_col_num < 8)
			draw_sprite_part_ext(spr_hair,spr_hair_num,0,320*spr_hair_col_num,320,320,xx,yy,scl,scl,c_white,1);
		else
			draw_sprite_part_ext(spr_hair_2,spr_hair_num,0,320*(spr_hair_col_num-8),320,320,xx,yy,scl,scl,c_white,1);
		}
		
		// accesory
		//draw_sprite_part_ext(spr,6,spr_num*spr_acc_num,spr_num*spr_acc_col_num,spr_num,spr_num,xx,yy,scl,scl,c_white,1);
		if(spr_acc_col_num < 8)
			draw_sprite_part_ext(spr_acc,spr_acc_num,0,320*spr_acc_col_num,320,320,xx,yy,scl,scl,c_white,1);
		else
			draw_sprite_part_ext(spr_acc_2,spr_acc_num,0,320*(spr_acc_col_num-8),320,320,xx,yy,scl,scl,c_white,1);

	}
	
}