// this is setting end turn heal, otherwise same as end of turn in alarm[0]

heal_on = false;
if(manager_battle_remix.unitHp_curr[3] <= 0)
{
text_pause_on = true;
alarm[4] = text_pause;
end_on = true;
		
}
else if(manager_battle_remix.unitHp_curr[0] <= 0
&& manager_battle_remix.unitHp_curr[1] <= 0
&& manager_battle_remix.unitHp_curr[2] <= 0)
{
text_pause_on = true;
alarm[4] = text_pause;
lose_on = true;
}
else
{
text_curr = 0;
menu_on = false;
text_pause_on = true;
alarm[2] = text_pause;
}