if(!draw_on) exit;

if(spr_field != -1)
{
	draw_sprite_part(spr,1,spr_w*spr_field,0,spr_w,spr_h,x,y);
}
else
{
	draw_sprite_part(spr,0,spr_w*spr_element_1,0,spr_w,spr_h,x,y);
}