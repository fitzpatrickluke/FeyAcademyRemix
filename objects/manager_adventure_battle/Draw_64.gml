if(!gate_on)
	exit;
// fading into the battle
if(fadeIn_battle)
{
	for(var i = 0; i <= 1; i+=0.05)
	{
		draw_set_alpha(i);
		draw_rectangle_color(0,0,896,640,c_black,c_black,c_black,c_black,false);
		draw_set_alpha(1)
		if(i >= 1)
		{
			gate_on = false;
			boss = false;
			//room = battleRoom;
			room = battleRoomRemix;
		}
	}
}