draw_sprite(spr,0,x,y);

if(place_meeting(x,y+16,manager_castle))
{
	draw_student_explore();
}

if(place_meeting(x,y+2,manager_castle))
	draw_sprite(spr_talk,spr_talk_counter,x,y-16)