manager_castle.pause = false;
instance_destroy(id);

if(shop_on)
{
	manager_students.explore_start_x = manager_castle.x;
	manager_students.explore_start_y = manager_castle.y;
	manager_students.prev_room_adv = room;
	room = shopRoom;
}