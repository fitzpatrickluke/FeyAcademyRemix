// this is setting a curse, otherwise same as end of turn in alarm[0]

curse_on = false;
// bring up heal end turn text
if(manager_battle_remix.boolHealEndTurn[0] || manager_battle_remix.boolHealEndTurn[1]
|| manager_battle_remix.boolHealEndTurn[2])
{
	text_pause_on = true;
	alarm[4] = text_pause;
	heal_on = true;
}
else if(manager_battle_remix.unitHp_curr[3] <= 0)
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