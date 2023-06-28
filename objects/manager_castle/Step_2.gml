half_view_width = camera_get_view_width(view_camera[0])/2;
half_view_height = camera_get_view_height(view_camera[0])/2;

cx = x-half_view_width;
cy = y-half_view_height;

if(cx<=0)
	cx = 0;
if(cx >= room_width - camera_get_view_width(view_camera[0]))
	cx = room_width - camera_get_view_width(view_camera[0]);
	
if(cy<=0)
	cy = 0;
if(cy >= room_height - camera_get_view_height(view_camera[0]))
	cy = room_height - camera_get_view_height(view_camera[0]);

camera_set_view_pos(view_camera[0],cx,cy);