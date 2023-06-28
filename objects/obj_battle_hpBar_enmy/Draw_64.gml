// draw the back
draw_sprite_ext(spr_battle_hp_enmy,1,x*scale,y*scale,scale,scale,0,c_white,1);

hp_col = c_green;
if(stat_hp_curr <= 0)
	hp_col = c_red;
else if(stat_hp_curr <= (stat_hp/2))
	hp_col = c_yellow;
else if(stat_hp_curr <= (stat_hp/4))
	hp_col = c_orange;

stat_hp_curr = manager_battle_remix.unitHp_curr[3];
if(stat_hp_curr <= 0)
	hp_y = (y+46)*scale;
else
	hp_y = (y+2+
	(1-(stat_hp-(stat_hp-stat_hp_curr))/stat_hp)*46
	)*scale;
	
	
	
draw_rectangle_color((x+4)*scale,hp_y,(x+6)*scale,(y+46)*scale,hp_col,hp_col,hp_col,hp_col,false);
//draw_rectangle_color(1,1,100,100,hp_col,hp_col,hp_col,hp_col,false);

// draw text
draw_set_font(font_8);
draw_text_color(txt_x,txt_y,string(stat_hp_curr),c_white,c_white,c_white,c_white,1);
	

// draw the boarder
draw_sprite_ext(spr_battle_hp_enmy,0,x*scale,y*scale,scale,scale,0,c_white,1);