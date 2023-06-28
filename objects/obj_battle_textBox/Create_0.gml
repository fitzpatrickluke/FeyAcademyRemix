menu_on = false;

text[0] = "Bloom used Dragon Flame against Bee-mon.";
text[1] = "Stella used the power of the Shining Sun to heal Bloom.";
text[2] = "Aisha used Morphix surfboard. Aisha's speed increased by 2.";
text[3] = "Bee-mon used pollen puff on Bloom. Bloom was petrified.";

text_sized = "";

scale = manager_students.master_scale;

txt_col = c_black;
text_w = 144*scale;

text_end = "You defeated " + string(obj_battle_enmy.enemy_name) + ".";
text_end = string_wrap(text_end, text_w);

text_lose = "You were defeated by " + string(obj_battle_enmy.enemy_name) + ".";
text_lose = string_wrap(text_lose, text_w);

text_levelUp = "You defeated " + string(obj_battle_enmy.enemy_name) + ". " + "\nYou leveled up!";
text_levelUp = string_wrap(text_levelUp, text_w);

text_curse = "Damage was dealt by Curse.";
text_curse = string_wrap(text_curse, text_w);

text_heal = "HP was healed by equipment.";
text_heal = string_wrap(text_heal, text_w);

text_flee = "You ran away.";
text_flee = string_wrap(text_flee, text_w);

text_start = string(string(obj_battle_enmy.enemy_name)) + " attacked you. ";
text_start = string_wrap(text_start, text_w);

end_on = false;
lose_on = false;
levelUp_on = false;
isDead = false;
start_on = false;
flee_on = false;

curse_on = false;
heal_on = false;



text_time = 120;
text_pause = 10;
text_pause_on = false;
text_curr = 0;
text_time_end = 60;

obj_battle_menu_button.menu_on = false;
obj_battle_menu_spell.menu_on = false;
obj_battle_portrait.menu_on = false;

menu_on = true;
start_on = true;
text_pause_on = true;
alarm[4] = obj_battle_textBox.text_pause;

