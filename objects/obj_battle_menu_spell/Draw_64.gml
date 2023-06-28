if(!menu_on) exit;
if(spell_off) exit;

if(spell_wings)
button_txt = manager_spells.player_spells[# spell_num, 0];
else
button_txt = manager_spells.player_spells[# spellList[spell_num], 0]

draw_set_font(font_12);
draw_text_color((x+4)*scale,(y+2)*scale,button_txt,txt_col,txt_col,txt_col,txt_col,1);