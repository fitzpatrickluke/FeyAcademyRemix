switch(room)
{
	case menuRoomRemix:
	case shopRoom:
	last_music = curr_music;
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
	last_music = music_castle;
	break;
	//case battleRoom:
	case battleRoomRemix:
	if(music_battle == boss_1 || music_battle == boss_2 || music_battle == boss_3 || music_battle == sound_rr)
		last_music = music_battle;
	else
	{
		music_battle = set_battle_music();
		last_music = music_battle;
	}
	break;
	case introRoom:
	last_music = music_intro;
	break;
	case startRoom:
	last_music = music_start;
	break;
	case endRoom:
	last_music = music_ending;
	break;
	case adventure_flowerFieldsf1:
	case adventure_flowerFieldsf2:
	case adventure_flowerFieldsf3:
	case adventure_flowerFieldsf4:
	last_music = music_ff;
	break;
	case adventure_willowWoodsf1:
	case adventure_willowWoodsf2:
	case adventure_willowWoodsf3:
	case adventure_willowWoodsf4:
	last_music = music_ww;
	break;
	case adventure_autumnFallsf1:
	case adventure_autumnFallsf2:
	case adventure_autumnFallsf3:
	case adventure_autumnFallsf4:
	last_music = music_af;
	break;
	case adventure_snowflakePointf1:
	case adventure_snowflakePointf2:
	case adventure_snowflakePointf3:
	case adventure_snowflakePointf4:
	last_music = music_sp;
	break;
	case adventure_sakuraStepsf1:
	case adventure_sakuraStepsf2:
	case adventure_sakuraStepsf3:
	case adventure_sakuraStepsf4:
	last_music = music_ss;
	break;
	case adventure_feyTemplef1:
	case adventure_feyTemplef2:
	case adventure_feyTemplef3:
	case adventure_feyTemplef4:
	last_music = music_ft;
	break;
	case adventure_ancientAbyssf1:
	case adventure_ancientAbyssf2:
	case adventure_ancientAbyssf3:
	case adventure_ancientAbyssf4:
	last_music = music_aa;
	break;
	case adventure_endRainbowf1:
	case adventure_endRainbowf2:
	case adventure_endRainbowf3:
	case adventure_endRainbowf4:
	last_music = music_er;
	break;
	case adventure_reflectionRift1:
	last_music = music_rr;
	break;
}