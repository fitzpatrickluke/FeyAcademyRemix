if(!menu_on) exit;

if(text_pause_on) exit;

draw_set_font(font_24);

if(levelUp_on)
	draw_text_color((x+8)*scale,(y+8)*scale,text_levelUp,txt_col,txt_col,txt_col,txt_col,1);
else if(lose_on)
	draw_text_color((x+8)*scale,(y+8)*scale,text_lose,txt_col,txt_col,txt_col,txt_col,1);
else if(end_on)
	draw_text_color((x+8)*scale,(y+8)*scale,text_end,txt_col,txt_col,txt_col,txt_col,1);
else if(curse_on)
	draw_text_color((x+8)*scale,(y+8)*scale,text_curse,txt_col,txt_col,txt_col,txt_col,1);
else if(heal_on)
	draw_text_color((x+8)*scale,(y+8)*scale,text_heal,txt_col,txt_col,txt_col,txt_col,1);
else if(start_on)
	draw_text_color((x+8)*scale,(y+8)*scale,text_start,txt_col,txt_col,txt_col,txt_col,1);
else if(flee_on)
	draw_text_color((x+8)*scale,(y+8)*scale,text_flee,txt_col,txt_col,txt_col,txt_col,1);
else
	draw_text_color((x+8)*scale,(y+8)*scale,string_wrap(text_sized,text_w),txt_col,txt_col,txt_col,txt_col,1);
