if(place_meeting(colX,colY,manager_adventure))
	check = true;
	
if(check)
{
	if(!place_meeting(x,y,manager_adventure))
		instance_destroy(id);
}