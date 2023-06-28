///@description draw_student_explore
///@arg student
///@arg spr
function draw_student_random(argument0,argument1)
{
	student_spr = argument1;
	spr_w = 16;
	spr_h = 24;
	with(argument0)
	{
		// draw the hair
		draw_sprite_part(student_spr,4,spr_w*spr_hair_num,spr_h*spr_hair_col_num,spr_w,spr_h,x,y);

		// draw the body
		draw_sprite_part(student_spr,1,0,spr_h*spr_body_num,spr_w,spr_h,x,y);

		// draw the eyes
		draw_sprite_part(student_spr,6,0,spr_h*spr_eye_num,spr_w,spr_h,x,y);

		// draw the shoes
		draw_sprite_part(student_spr,16,spr_w*spr_shoe_num,spr_h*spr_shoe_col_num,spr_w,spr_h,x,y);

		// draw the bottom
		draw_sprite_part(student_spr,12,spr_w*spr_bot_num,spr_h*spr_bot_col_num,spr_w,spr_h,x,y);

		// draw the top
		draw_sprite_part(student_spr,8,spr_w*spr_top_num,spr_h*spr_top_col_num,spr_w,spr_h,x,y);

		// draw the bangs
		draw_sprite_part(student_spr,5,spr_w*spr_bang_num,spr_h*spr_hair_col_num,spr_w,spr_h,x,y);

		// draw the accesory
		draw_sprite_part(student_spr,19,spr_w*spr_acc_num,spr_h*spr_acc_col_num,spr_w,spr_h,x,y);
	}
}