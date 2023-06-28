if(!attack_on) exit;

spr_num += 1;
if(spr_num >= 8)
{
	spr_num = 0;
	attack_on = false;
}
else
	alarm[1] = on_time;