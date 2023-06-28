draw_sprite_ext(spr,0,spr_x,spr_y,scale,scale,0,c_white,1);

draw_set_font(font_12);
var t = string_wrap(txt,txt_ww);
draw_text_color(txt_wx,txt_wy,t,c_black,c_black,c_black,c_black,1);