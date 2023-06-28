///@description draw_student_explore
///@arg x
///@arg y
///@arg frame
///@arg right
function draw_student_adventure(argument0,argument1,argument2,argument3)
{

var px = argument0-8;
var py = argument1-4;
var f = argument2;
var right = argument3;

var plusX = 0;
var plusX2 = 7;
var plusY2 = 6;

if(manager_students.player_custom[0] == 0)
{
	var spr = manager_students.master_student_1.spr_battle;
	var spr_w = manager_students.master_student_1.spr_wings;
	var w = manager_students.student_1_wings;
	
	if(right)
	{
		// draw wings
		draw_sprite_ext(spr_w,w,px+32,py+f,-1,1,0,c_white,1);
		// draw body
		draw_sprite_ext(spr,w,px+32,py,-1,1,0,c_white,1);
	}
	else
	{
		// draw wings
		draw_sprite(spr_w,w,px,py+f);
		// draw body
		draw_sprite(spr,w,px,py);
	}
}
else
{
	
	if(manager_students.player_gender[0] == 0)
	{
		var spr = spr_cc_final_left;
		var spr2 = spr_fairy_player;
		var spr3 = spr_fairy_player_hair;
		var spr4 = spr_fairy_player_over;
		var spr5 = spr_fairy_player_wings;
		var plusX2 = 7;
		var plusY2 = 6;
	}
	else if(manager_students.player_gender[0] == 1)
	{
		var spr = spr_cc_final_left_male;
		var spr2 = spr_fairy_player_male;
		var spr3 = spr_fairy_player_hair_male;
		var spr4 = spr_fairy_player_over_male;
		var spr5 = spr_fairy_player_wings;
		var plusX2 = 7;
		var plusY2 = 7;
	}
	
	if(right)
	{
		var plusX = 32;
		var scl = -1;
	}
	else
	{
		var plusX = 0;
		var scl = 1;
	}

	with(manager_students)
	{	
		// draw the wings
		draw_sprite_part_ext(spr5,manager_students.student_1_wings,32*(player_element-1),0,32,32,px+plusX,py+f,scl,1,c_white,1);
		
		// draw the hair
		if(manager_students.player_gender[0] == 0)
			draw_sprite_part_ext(spr3,manager_students.student_1_wings,32*spr_hair_num,32*spr_hair_col_num,32,32,px+plusX,py,scl,1,c_white,1);

		// draw the body
		draw_sprite_part_ext(spr2,manager_students.student_1_wings,32*(player_element-1),32*spr_body_num,32,32,px+plusX,py,scl,1,c_white,1);

		// draw the eyes
		//draw_sprite_part_ext(spr,6,0,24*spr_eye_num,16,24,px+plusX2*scl,py+plusY2*scl,scl,scl,c_white,1);
		draw_sprite_ext(spr_fairy_eyes,0,px+plusX,py,scl,1,0,c_white,1);
		
		// draw the bangs
		if(manager_students.player_gender[0] == 0)
			draw_sprite_part_ext(spr,5,16*spr_bang_num,24*spr_hair_col_num,16,24,px+plusX2*scl+plusX,py+plusY2,scl,1,c_white,1);
		else
			draw_sprite_part_ext(spr3,manager_students.student_1_wings,32*spr_bang_num,32*spr_hair_col_num,32,32,px+plusX,py,scl,1,c_white,1);
		
		
		// draw the beard
		if(manager_students.player_gender[0] == 1)
			draw_sprite_part_ext(spr,4,16*spr_bang_num,24*spr_hair_col_num,16,24,px+plusX2*scl+plusX,py+plusY2,scl,1,c_white,1);
		
		// draw the accesory
		draw_sprite_part_ext(spr4,manager_students.student_1_wings,32*(player_element-1),0,32,32,px+plusX,py,scl,1,c_white,1);
	}


}

}