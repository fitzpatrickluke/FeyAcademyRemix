if(menu_on == false) exit;

draw_set_font(font_12);
for(var i = 0; i < 6; i+=1)
{
	//if(spells_heal[i] != -1)
		draw_text_color(txt_x,txt_y+txt_h*i,spells_heal_txt[i],c_black,c_black,c_black,c_black,1);
}

