if(!on)
	exit;
	
draw_sprite_ext(spr,0,spr_x,spr_y,scale,scale,0,c_white,1);

if(mouseX >= yes_x && mouseX < yes_x + choice_w
&& mouseY >= yes_y && mouseY < yes_y + choice_h)
{
	draw_sprite_part_ext(spr,1,0,0,choice_w,choice_h,yes_x,yes_y,scale,scale,c_white,1);
}

if(mouseX >= no_x && mouseX < no_x + choice_w
&& mouseY >= no_y && mouseY < no_y + choice_h)
{
	draw_sprite_part_ext(spr,1,0,0,choice_w,choice_h,no_x,no_y,scale,scale,c_white,1);
}

draw_set_font(font_16);
draw_text_color(txt_x_1,txt_y,"Yes",c_black,c_black,c_black,c_black,1);
draw_text_color(txt_x_2,txt_y,"No",c_black,c_black,c_black,c_black,1);

draw_set_font(font_12);
var t = string_wrap(txt,txt_ww);
draw_text_color(txt_wx,txt_wy,t,c_black,c_black,c_black,c_black,1);