if(spr_counter >= 8)
{
	spr_counter = 0;
	pl_on = false;
}
else
{
	spr_o += 0.05;
	if(spr_o >= 1)
	{
		spr_o = 0;
		spr_counter+=1;
		spr2_counter+=1;
		alarm[2] = spr_spd;
	}
	else
		alarm[2] = spr2_spd;
}