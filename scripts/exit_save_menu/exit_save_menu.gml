///@arg exit_save_menu
function exit_save_menu()
{
	with(manager_menu)
	{
		save_pause = false;
		menu_curr = menus.main;
		menu_on = false;
		switch(room)
		{
			case castle_astrology:
			case castle_bed:
			case castle_botony:
			case castle_bridge:
			case castle_courtyard:
			case castle_enchantments:
			case castle_entranceNew:
			case castle_library:
			case castle_office:
			manager_castle.pause = false;
			break;
			case adventure_flowerFieldsf1:
			case adventure_flowerFieldsf2:
			case adventure_flowerFieldsf3:
			case adventure_flowerFieldsf4:
			case adventure_willowWoodsf1:
			case adventure_willowWoodsf2:
			case adventure_willowWoodsf3:
			case adventure_willowWoodsf4:
			case adventure_autumnFallsf1:
			case adventure_autumnFallsf2:
			case adventure_autumnFallsf3:
			case adventure_autumnFallsf4:
			case adventure_snowflakePointf1:
			case adventure_snowflakePointf2:
			case adventure_snowflakePointf3:
			case adventure_snowflakePointf4:
			case adventure_sakuraStepsf1:
			case adventure_sakuraStepsf2:
			case adventure_sakuraStepsf3:
			case adventure_sakuraStepsf4:
			case adventure_feyTemplef1:
			case adventure_feyTemplef2:
			case adventure_feyTemplef3:
			case adventure_feyTemplef4:
			case adventure_ancientAbyssf1:
			case adventure_ancientAbyssf2:
			case adventure_ancientAbyssf3:
			case adventure_ancientAbyssf4:
			case adventure_endRainbowf1:
			case adventure_endRainbowf2:
			case adventure_endRainbowf3:
			case adventure_endRainbowf4:
			manager_adventure.pause = false;
			manager_adventure_maps.map_off = false;
			break;
		}
		room_change = true;
		alarm[1] = room_change_time;
	}
}