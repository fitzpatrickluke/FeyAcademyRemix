if(manager_battle_remix.boolCurse[3])
	spr_col = c_fuchsia;
if(manager_battle_remix.boolPetrify[3])
	spr_col = c_yellow;
if(manager_battle_remix.boolBlind[3])
	spr_col = c_blue;
if(manager_battle_remix.boolDeaf[3])
	spr_col = c_gray;
if(manager_battle_remix.unitHp_curr[3] <= 0)
{
	spr_col = c_black;
	alarm[0] = -1;
	spr_num = 0;
}
	
draw_sprite_ext(spr,spr_num,x,y,1,1,0,spr_col,1);