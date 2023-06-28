if(manager_castle.x >= x+8)
	spr = spr_R;
else
	spr = spr_L;

draw_student_random(id,spr);

/*
if(place_meeting(x,y,manager_castle))
	depth = 2;
else
	depth = -2;
	*/
if(place_meeting(x,y+16,manager_castle))
{
	draw_student_explore();
}