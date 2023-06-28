// draw the back
draw_sprite_ext(spr_battle_hp_ply,1,x*scale,y*scale,scale,scale,0,c_white,1);



stat_mp_curr = manager_battle_remix.unitMp_curr[student_num];
if(stat_mp_curr <= 0)
	mp_y = (y+22)*scale;
else
	mp_y = (y+2)*scale +
	(1-(stat_mp-(stat_mp-stat_mp_curr))/stat_mp)*(22*scale)

	
	
	
draw_rectangle_color((x+4)*scale,mp_y,(x+6)*scale,(y+22)*scale,mp_col,mp_col,mp_col,mp_col,false);
	
// draw text
draw_set_font(font_8);
draw_text_color(txt_x,txt_y,string(stat_mp_curr),c_white,c_white,c_white,c_white,1);

// draw the boarder
draw_sprite_ext(spr_battle_hp_ply,0,x*scale,y*scale,scale,scale,0,c_white,1);