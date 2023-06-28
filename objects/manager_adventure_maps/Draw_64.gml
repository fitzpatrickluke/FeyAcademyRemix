if(map_off)
	exit;
	
draw_sprite(spr,7,spr_x,spr_y-20);
draw_set_font(font_12);
var txtFloor = get_stratum_name_map(room);
draw_text_color(spr_x+16,spr_y-10, txtFloor,c_black,c_black,c_black,c_black,1);
draw_sprite_ext(spr_mon,0,mon_on_x,mon_on_y,scale,scale,0,c_white,1);
if(manager_students.mon_on)
	draw_sprite_ext(spr_mon,spr_mon_num,mon_on_x,mon_on_y,scale,scale,0,c_white,1);
else
	draw_sprite_ext(spr_mon,1,mon_on_x,mon_on_y,scale,scale,0,c_black,1);
draw_sprite_ext(spr_mon,0,mon_on_x,mon_on_y,scale,scale,0,c_white,1);

draw_sprite(spr,spr_num,spr_x,spr_y);

for(var i = 0; i < map_size; i+=1)
{
	for(var j = 0; j < map_size; j+=1)
	{
		// draw map square
		switch(map_curr[# j, i])
		{
			case maps.null:
			break;
			case maps.basic:
			draw_sprite_part(spr,spr_num_2,0,box_w*maps.basic,box_w,box_w,spr_box_x+box_w*i,spr_box_y+box_w*j);
			break;
			case maps.stairs:
			draw_sprite_part(spr,spr_num_2,0,box_w*maps.stairs,box_w,box_w,spr_box_x+box_w*i,spr_box_y+box_w*j);
			break;
			case maps.hole:
			draw_sprite_part(spr,spr_num_2,0,box_w*maps.hole,box_w,box_w,spr_box_x+box_w*i,spr_box_y+box_w*j);
			break;
			case maps.warp:
			draw_sprite_part(spr,spr_num_2,0,box_w*maps.warp,box_w,box_w,spr_box_x+box_w*i,spr_box_y+box_w*j);
			break;
		}
		
		// draw student location
		if(mapx == i && mapy == j)
			if(player_on)
				draw_sprite_part(spr,spr_num_2,0,0,box_w,box_w,spr_box_x+box_w*i,spr_box_y+box_w*j);
	}
}