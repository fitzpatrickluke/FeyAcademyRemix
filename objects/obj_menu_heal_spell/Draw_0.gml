if(menu_on == false) exit;

for(var i = 0; i < 6; i+=1)
{
	if(spells_heal[i] != -1)
		draw_sprite(spr_menu_heal_spell,spr_num[i],x,y+spr_h*i);
}
