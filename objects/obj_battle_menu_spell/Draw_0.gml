if(!menu_on) exit;

draw_sprite(spr,0,x,y);

if(spell_off) exit;

if(no_mp_on)
	draw_sprite(spr,2,x,y);
else if(mouse_on)
	draw_sprite(spr,1,x,y);

