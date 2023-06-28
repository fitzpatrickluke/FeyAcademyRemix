///@description draw_student_battle_menu_ex_start
///@arg x
///@arg y
///@arg student
///@arg wings
///@arg opacity
function draw_student_battle_menu_ex_start(argument0,argument1,argument2,argument3,argument4)
{
	var px = argument0;
	var py = argument1;
	var s = argument2;
	var w = argument3;
	var o = argument4;

	var spr = s.spr_battle;
	var spr_w = s.spr_wings;
	var scl = 1.5;
	with(manager_students)
	{	
			// draw the wings
			draw_sprite_ext(spr_w,w,px,py,scl,scl,0,c_white,o);
			// draw the body
			draw_sprite_part_ext(spr,w,0,0,32,32,px,py,scl,scl,c_white,o);
		
	}
}