curr_music = -1;
switch(room)
{
	case menuRoomRemix:
	case shopRoom:
	curr_music = last_music;
	break;
	case castle_astrology:
	case castle_bed:
	case castle_botony:
	case castle_bridge:
	case castle_courtyard:
	case castle_enchantments:
	case castle_library:
	case castle_office:
	case castle_entranceNew:
	curr_music = music_castle;
	break;
	//case battleRoom:
	case battleRoomRemix:
	music_battle = set_battle_music();
	curr_music = music_battle;
	break;
	case introRoom:
	curr_music = music_intro;
	break;
	case startRoom:
	curr_music = music_start;
	break;
	case endRoom:
	curr_music = music_ending;
	break;
	case adventure_flowerFieldsf1:
	case adventure_flowerFieldsf2:
	case adventure_flowerFieldsf3:
	case adventure_flowerFieldsf4:	
	curr_music = music_ff;
	break;
	case adventure_willowWoodsf1:
	case adventure_willowWoodsf2:
	case adventure_willowWoodsf3:
	case adventure_willowWoodsf4:
	curr_music = music_ww;
	break;
	case adventure_autumnFallsf1:
	case adventure_autumnFallsf2:
	case adventure_autumnFallsf3:
	case adventure_autumnFallsf4:
	curr_music = music_af;
	break;
	case adventure_snowflakePointf1:
	case adventure_snowflakePointf2:
	case adventure_snowflakePointf3:
	case adventure_snowflakePointf4:
	curr_music = music_sp;
	break;
	case adventure_sakuraStepsf1:
	case adventure_sakuraStepsf2:
	case adventure_sakuraStepsf3:
	case adventure_sakuraStepsf4:
	curr_music = music_ss;
	break;
	case adventure_feyTemplef1:
	case adventure_feyTemplef2:
	case adventure_feyTemplef3:
	case adventure_feyTemplef4:
	curr_music = music_ft;
	break;
	case adventure_ancientAbyssf1:
	case adventure_ancientAbyssf2:
	case adventure_ancientAbyssf3:
	case adventure_ancientAbyssf4:
	curr_music = music_aa;
	break;
	case adventure_endRainbowf1:
	case adventure_endRainbowf2:
	case adventure_endRainbowf3:
	case adventure_endRainbowf4:
	curr_music = music_er;
	break;
	case adventure_reflectionRift1:
	curr_music = music_rr;
	break;
}
if(last_music != curr_music)
{
	audio_stop_sound(last_music);
	if(room == endRoom)
	{
		alarm[0] = 400;
	}
	else if(curr_music != -1)
	{
		audio_play_sound(curr_music, 2, true);
	}
}
