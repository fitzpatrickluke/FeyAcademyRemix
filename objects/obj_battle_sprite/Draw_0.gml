if(!attack_on) exit;

draw_sprite(spr_atk_back,spr_num,x,y);
if(defending)
	draw_sprite(spr,spr_num,x,y);
else if(special)
	draw_sprite_part(spr_atk_special,0,48*spr_num,0,48,48,x-8,y-8);
else if(strike)
	draw_sprite(spr_attack_hit_strike,spr_num,x,y);
else
{
	var n1 = floor(spr_atk_num/30);
	var n2 = (spr_atk_num-n1*30-1)*32;
	draw_sprite_part(spr,n1, spr_num*spr_w,n2,spr_w,spr_h,x,y);
}