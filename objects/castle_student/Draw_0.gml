if(manager_students.curr_phase != ph)
	instance_destroy(id);

if(manager_castle.x >= x+8)
	spr = spr_R;
else
	spr = spr_L;

draw_sprite(spr,1,x,y);


if(place_meeting(x,y+16,manager_castle))
{
	draw_student_explore();
}

if(place_meeting(x,y+2,manager_castle))
	draw_sprite(spr_talk,spr_talk_counter,x,y-16)