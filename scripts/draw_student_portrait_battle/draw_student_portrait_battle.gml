///@description draw_student_portrait_battle
///@arg x
///@arg y
///@arg scale
function draw_student_portrait_battle(argument0,argument1,argument2)
{

	var xx = argument0;
	var yy = argument1;
	var scl = argument2;
	var spr = spr_portrait_cc;
	if(manager_students.player_gender[0] == 1)
	spr = spr_portrait_cc_male;
	
	var spr_num_w = 48*4;
	var spr_num_h = 48*4;
	var spr_num_top = 12*4;
	var spr_num_left = 16*4;
	
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
		//draw_sprite_part_ext(spr,2,spr_num*spr_hair_num+spr_num_left,spr_num*spr_hair_col_num+spr_num_top,spr_num_w,spr_num_h,xx,yy,scl,scl,c_white,1);
		
		if(manager_students.player_gender[0] == 0)
		{
		if(spr_hair_col_num < 8)
			draw_sprite_part_ext(spr_hair,spr_hair_num,spr_num_left,320*spr_hair_col_num+spr_num_top,spr_num_w,spr_num_h,xx,yy,scl,scl,c_white,1);
		else
			draw_sprite_part_ext(spr_hair_2,spr_hair_num,spr_num_left,320*(spr_hair_col_num-8)+spr_num_top,spr_num_w,spr_num_h,xx,yy,scl,scl,c_white,1);
		}
		
		//body
		//draw_sprite_part_ext(spr,1,spr_num*spr_top_num+spr_num_left,spr_num*spr_body_num+spr_num_top,spr_num_w,spr_num_h,xx,yy,scl,scl,c_white,1);
		draw_sprite_part_ext(spr_body,spr_body_num,spr_num_left,spr_num_top,spr_num_w,spr_num_h,xx,yy,scl,scl,c_white,1)
		
		// face
		//draw_sprite_part_ext(spr,0,spr_num*spr_body_num+spr_num_left,0+spr_num_top,spr_num_w,spr_num_h,xx,yy,scl,scl,c_white,1);
		
		// eyes
		//draw_sprite_part_ext(spr,4,0+spr_num_left,spr_num*spr_eye_num+spr_num_top,spr_num_w,spr_num_h,xx,yy,scl,scl,c_white,1);
		
		// top
		//draw_sprite_part_ext(spr,5,spr_num*spr_top_num+spr_num_left,spr_num*spr_top_col_num+spr_num_top,spr_num_w,spr_num_h,xx,yy,scl,scl,c_white,1);
		
		// bangs
		//draw_sprite_part_ext(spr,3,spr_num*spr_bang_num+spr_num_left,spr_num*spr_hair_col_num+spr_num_top,spr_num_w,spr_num_h,xx,yy,scl,scl,c_white,1);
		if(spr_hair_col_num < 8)
			draw_sprite_part_ext(spr_bang,spr_bang_num,spr_num_left,320*spr_hair_col_num+spr_num_top,spr_num_w,spr_num_h,xx,yy,scl,scl,c_white,1);
		else
			draw_sprite_part_ext(spr_bang_2,spr_bang_num,spr_num_left,320*(spr_hair_col_num-8)+spr_num_top,spr_num_w,spr_num_h,xx,yy,scl,scl,c_white,1);

		// beard
		if(manager_students.player_gender[0] == 1)
		{
			if(spr_hair_col_num < 8)
				draw_sprite_part_ext(spr_hair,spr_hair_num,spr_num_left,320*spr_hair_col_num+spr_num_top,spr_num_w,spr_num_h,xx,yy,scl,scl,c_white,1);
			else
				draw_sprite_part_ext(spr_hair_2,spr_hair_num,spr_num_left,320*(spr_hair_col_num-8)+spr_num_top,spr_num_w,spr_num_h,xx,yy,scl,scl,c_white,1);
		}
		
		// accesory
		//draw_sprite_part_ext(spr,6,spr_num*spr_acc_num+spr_num_left,spr_num*spr_acc_col_num+spr_num_top,spr_num_w,spr_num_h,xx,yy,scl,scl,c_white,1);
		if(spr_acc_col_num < 8)
			draw_sprite_part_ext(spr_acc,spr_acc_num,spr_num_left,320*spr_acc_col_num+spr_num_top,spr_num_w,spr_num_h,xx,yy,scl,scl,c_white,1);
		else
			draw_sprite_part_ext(spr_acc_2,spr_acc_num,spr_num_left,320*(spr_acc_col_num-8)+spr_num_top,spr_num_w,spr_num_h,xx,yy,scl,scl,c_white,1);
			
	}
	
}