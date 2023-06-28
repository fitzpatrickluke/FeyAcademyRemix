///@description draw_student_battle_ex
///@arg x
///@arg y
///@arg studentCol
///@arg student
///@arg wings
///@arg frame
function draw_student_battle_ex(argument0,argument1,argument2,argument3,argument4,argument5)
{
	var px = argument0;
	var py = argument1;
	var c = argument2;
	var s = argument3;
	var w = argument4;
	var f = argument5;
	var spr = s.spr_battle;
	var spr_w = s.spr_wings;
	var scl = 1;
	with(manager_students)
	{	
		// draw the wings
		draw_sprite_ext(spr_w,w,px,py+f,scl,scl,0,c,1);
							
		// draw the body
		draw_sprite_part_ext(spr,w,0,0,32,32,px,py,scl,scl,c,1);

	}
}