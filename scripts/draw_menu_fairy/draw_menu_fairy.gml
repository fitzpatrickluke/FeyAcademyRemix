///@description draw_menu_fairy
///@arg x
///@arg y
///@arg color
///@arg wings_num
function draw_menu_fairy(argument0,argument1,argument2,argument3)
{
	var px = argument0;
	var py = argument1;
	var c = argument2;
	var w = argument3;
	if(manager_students.player_gender[0] == 0)
	{
		var spr = spr_cc_final_left;
		var spr2 = spr_fairy_player;
		var spr3 = spr_fairy_player_hair;
		var spr4 = spr_fairy_player_over;
		var spr5 = spr_fairy_player_wings;
	}
	else
	{
		var spr = spr_cc_final_left_male;
		var spr2 = spr_fairy_player_male;
		var spr3 = spr_fairy_player_hair_male;
		var spr4 = spr_fairy_player_over_male;
		var spr5 = spr_fairy_player_wings;
	}
	var scl = 1;
	with(manager_students)
	{	
		// draw the wings
		draw_sprite_part_ext(spr5,w,32*(player_element-1),0,32,32,px,py,scl,scl,c,1);
		
		// draw the hair
		if(manager_students.player_gender[0] == 0)
			draw_sprite_part_ext(spr3,w,32*spr_hair_num,32*spr_hair_col_num,32,32,px,py,scl,scl,c,1);

		// draw the body
		draw_sprite_part_ext(spr2,w,32*(player_element-1),32*spr_body_num,32,32,px,py,scl,scl,c,1);

		// draw the eyes
		//draw_sprite_part_ext(spr,6,0,24*spr_eye_num,16,24,px+7*scl,py+6*scl,scl,scl,c,1);
		draw_sprite_ext(spr_fairy_eyes,0,px,py,scl,scl,0,c_white,1);

		// draw the bangs
		if(manager_students.player_gender[0] == 0)
			draw_sprite_part_ext(spr,5,16*spr_bang_num,24*spr_hair_col_num,16,24,px+7*scl,py+6*scl,scl,scl,c,1);
		else
			draw_sprite_part_ext(spr3,w,32*spr_bang_num,32*spr_hair_col_num,32,32,px,py,scl,scl,c_white,1);
		
		// draw the beard
		if(manager_students.player_gender[0] == 1)
			draw_sprite_part_ext(spr,4,16*spr_bang_num,24*spr_hair_col_num,16,24,px+7*scl,py+7*scl,scl,scl,c,1);
		
		
		// draw the accesory
		draw_sprite_part_ext(spr4,w,32*(player_element-1),32*spr_body_num,16,24,px,py,scl,scl,c,1);
	}
}