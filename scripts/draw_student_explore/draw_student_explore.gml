///@description draw_student_explore 
function draw_student_explore()
{
	with(manager_castle)
	{
		
		if(manager_students.player_custom[0] == 0)
		{
			draw_sprite(student_spr,student_spr_num,x,y);
		}
		else
		{
			
		// draw the hair
		if(manager_students.player_gender[0] == 0)
		{
			if(draw_right_on)
				draw_sprite_part_ext(student_spr,4,spr_w*spr_hair_num,spr_h*spr_hair_col_num,spr_w,spr_h,x+spr_w,y,-1,1,c_white,1);
			else
				draw_sprite_part(student_spr,4,spr_w*spr_hair_num,spr_h*spr_hair_col_num,spr_w,spr_h,x,y);
		
		}
		// draw the body
		if(draw_right_on)
			draw_sprite_part_ext(student_spr,spr_body_counter+student_spr_num,0,spr_h*spr_body_num,spr_w,spr_h,x+spr_w,y,-1,1,c_white,1);
		else
			draw_sprite_part(student_spr,spr_body_counter+student_spr_num,0,spr_h*spr_body_num,spr_w,spr_h,x,y);

		// draw the eyes
		//draw_sprite_part(student_spr,6,0,spr_h*spr_eye_num,spr_w,spr_h,x,y);

		// draw the shoes
		if(draw_right_on)
			draw_sprite_part_ext(student_spr,spr_shoe_counter+student_spr_num,spr_w*spr_shoe_num,spr_h*spr_shoe_col_num,spr_w,spr_h,x+spr_w,y,-1,1,c_white,1);
		else
			draw_sprite_part(student_spr,spr_shoe_counter+student_spr_num,spr_w*spr_shoe_num,spr_h*spr_shoe_col_num,spr_w,spr_h,x,y);

		// draw the bottom
		if(draw_right_on)
			draw_sprite_part_ext(student_spr,spr_bot_counter+student_spr_num,spr_w*spr_bot_num,spr_h*spr_bot_col_num,spr_w,spr_h,x+spr_w,y,-1,1,c_white,1);
		else
			draw_sprite_part(student_spr,spr_bot_counter+student_spr_num,spr_w*spr_bot_num,spr_h*spr_bot_col_num,spr_w,spr_h,x,y);

		// draw the top
		if(draw_right_on)
			draw_sprite_part_ext(student_spr,spr_top_counter+student_spr_num,spr_w*spr_top_num,spr_h*spr_top_col_num,spr_w,spr_h,x+spr_w,y,-1,1,c_white,1);
		else
			draw_sprite_part(student_spr,spr_top_counter+student_spr_num,spr_w*spr_top_num,spr_h*spr_top_col_num,spr_w,spr_h,x,y);

		// draw the bangs
		if(draw_right_on)
			draw_sprite_part_ext(student_spr,5,spr_w*spr_bang_num,spr_h*spr_hair_col_num,spr_w,spr_h,x+spr_w,y,-1,1,c_white,1);
		else
			draw_sprite_part(student_spr,5,spr_w*spr_bang_num,spr_h*spr_hair_col_num,spr_w,spr_h,x,y);
		
		// draw the beard
		if(manager_students.player_gender[0] == 1)
		{
			if(draw_right_on)
				draw_sprite_part_ext(student_spr,4,spr_w*spr_hair_num,spr_h*spr_hair_col_num,spr_w,spr_h,x+spr_w,y,-1,1,c_white,1);
			else
				draw_sprite_part(student_spr,4,spr_w*spr_hair_num,spr_h*spr_hair_col_num,spr_w,spr_h,x,y);
		}

		// draw the accesory
		if(draw_right_on)
			draw_sprite_part_ext(student_spr,19,spr_w*spr_acc_num,spr_h*spr_acc_col_num,spr_w,spr_h,x+spr_w,y,-1,1,c_white,1);
		else
			draw_sprite_part(student_spr,19,spr_w*spr_acc_num,spr_h*spr_acc_col_num,spr_w,spr_h,x,y);
		
		}
	}
	
}