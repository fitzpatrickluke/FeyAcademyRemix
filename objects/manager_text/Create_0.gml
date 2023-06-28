spells_l = 294;
txt_spells = ds_list_create();

var file = file_text_open_read("feyAcademy_spell.txt");
for(var i = 0; i < spells_l; i+=1)
{
	txt_spells[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

spells_l_2 = 103;
txt_enemy_des = ds_list_create();

var file = file_text_open_read("feyAcademy_mon.txt");
for(var i = 0; i < spells_l_2; i+=1)
{
	txt_enemy_des[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

txt_vivian = ds_list_create();
txt_vivian_length[phase.phase_start] = 3;
txt_vivian_length[phase.phase_ff] = 2;
txt_vivian_length[phase.phase_ww] = 4;
txt_vivian_length[phase.phase_af] = 3;
txt_vivian_length[phase.phase_sp] = 4;
txt_vivian_length[phase.phase_ss] = 6;
txt_vivian_length[phase.phase_ft] = 4;
txt_vivian_length[phase.phase_aa] = 3;
txt_vivian_length[phase.phase_aa2] = 3;
txt_vivian_length[phase.phase_er] = 4;
txt_vivian_length[phase.phase_er2] = 4;
txt_vivian_length[phase.phase_end] = 5;
var file = file_text_open_read("feyAcademy_vivian.txt");
for(var i = 0; i < 38; i+=1)
{
	txt_vivian[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

txt_crystal = ds_list_create();
txt_crystal_length[phase.phase_start] = 5;
txt_crystal_length[phase.phase_ff] = 3;
txt_crystal_length[phase.phase_ww] = 3;
txt_crystal_length[phase.phase_af] = 3;
txt_crystal_length[phase.phase_sp] = 3;
txt_crystal_length[phase.phase_ss] = 3;
txt_crystal_length[phase.phase_ft] = 5;
txt_crystal_length[phase.phase_aa] = 4;
txt_crystal_length[phase.phase_aa2] = 4;
txt_crystal_length[phase.phase_er] = 4;
txt_crystal_length[phase.phase_er2] = 4;
txt_crystal_length[phase.phase_end] = 5;
var file = file_text_open_read("feyAcademy_crystal.txt");
for(var i = 0; i < 38; i+=1)
{
	txt_crystal[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

txt_talia = ds_list_create();
txt_talia_length[phase.phase_start] = 3;
txt_talia_length[phase.phase_ff] = 2;
txt_talia_length[phase.phase_ww] = 2;
txt_talia_length[phase.phase_af] = 3;
txt_talia_length[phase.phase_sp] = 4;
txt_talia_length[phase.phase_ss] = 4;
txt_talia_length[phase.phase_ft] = 3;
txt_talia_length[phase.phase_aa] = 4;
txt_talia_length[phase.phase_aa2] = 4;
txt_talia_length[phase.phase_er] = 3;
txt_talia_length[phase.phase_er2] = 3;
txt_talia_length[phase.phase_end] = 4;
var file = file_text_open_read("feyAcademy_talia.txt");
for(var i = 0; i < 32; i+=1)
{
	txt_talia[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

txt_cindy = ds_list_create();
txt_cindy_length[phase.phase_start] = 5;
txt_cindy_length[phase.phase_ff] = 3;
txt_cindy_length[phase.phase_ww] = 2;
txt_cindy_length[phase.phase_af] = 2;
txt_cindy_length[phase.phase_sp] = 2;
txt_cindy_length[phase.phase_ss] = 3;
txt_cindy_length[phase.phase_ft] = 3;
txt_cindy_length[phase.phase_aa] = 3;
txt_cindy_length[phase.phase_aa2] = 3;
txt_cindy_length[phase.phase_er] = 3;
txt_cindy_length[phase.phase_er2] = 3;
txt_cindy_length[phase.phase_end] = 4;
var file = file_text_open_read("feyAcademy_cindy.txt");
for(var i = 0; i < 30; i+=1)
{
	txt_cindy[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

txt_bridgit = ds_list_create();
txt_bridgit_length[phase.phase_start] = 5;
txt_bridgit_length[phase.phase_ff] = 4;
txt_bridgit_length[phase.phase_ww] = 3;
txt_bridgit_length[phase.phase_af] = 2;
txt_bridgit_length[phase.phase_sp] = 2;
txt_bridgit_length[phase.phase_ss] = 3;
txt_bridgit_length[phase.phase_ft] = 2;
txt_bridgit_length[phase.phase_aa] = 4;
txt_bridgit_length[phase.phase_aa2] = 4;
txt_bridgit_length[phase.phase_er] = 3;
txt_bridgit_length[phase.phase_er2] = 3;
txt_bridgit_length[phase.phase_end] = 3;
var file = file_text_open_read("feyAcademy_bridgit.txt");
for(var i = 0; i < 31; i+=1)
{
	txt_bridgit[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

txt_paige = ds_list_create();
txt_paige_length[phase.phase_start] = 2;
txt_paige_length[phase.phase_ff] = 1;
txt_paige_length[phase.phase_ww] = 1;
txt_paige_length[phase.phase_af] = 2;
txt_paige_length[phase.phase_sp] = 3;
txt_paige_length[phase.phase_ss] = 3;
txt_paige_length[phase.phase_ft] = 3;
txt_paige_length[phase.phase_aa] = 3;
txt_paige_length[phase.phase_aa2] = 3;
txt_paige_length[phase.phase_er] = 3;
txt_paige_length[phase.phase_er2] = 3;
txt_paige_length[phase.phase_end] = 5;
var file = file_text_open_read("feyAcademy_paige.txt");
for(var i = 0; i < 26; i+=1)
{
	txt_paige[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

txt_tasha = ds_list_create();
txt_tasha_length[phase.phase_start] = 3;
txt_tasha_length[phase.phase_ff] = 2;
txt_tasha_length[phase.phase_ww] = 3;
txt_tasha_length[phase.phase_af] = 4;
txt_tasha_length[phase.phase_sp] = 1;
txt_tasha_length[phase.phase_ss] = 2;
txt_tasha_length[phase.phase_ft] = 3;
txt_tasha_length[phase.phase_aa] = 3;
txt_tasha_length[phase.phase_aa2] = 3;
txt_tasha_length[phase.phase_er] = 3;
txt_tasha_length[phase.phase_er2] = 3;
txt_tasha_length[phase.phase_end] = 4;
var file = file_text_open_read("feyAcademy_tasha.txt");
for(var i = 0; i < 28; i+=1)
{
	txt_tasha[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

txt_tigris = ds_list_create();
txt_tigris_length[phase.phase_start] = 5;
txt_tigris_length[phase.phase_ff] = 3;
txt_tigris_length[phase.phase_ww] = 3;
txt_tigris_length[phase.phase_af] = 2;
txt_tigris_length[phase.phase_sp] = 3;
txt_tigris_length[phase.phase_ss] = 3;
txt_tigris_length[phase.phase_ft] = 2;
txt_tigris_length[phase.phase_aa] = 3;
txt_tigris_length[phase.phase_aa2] = 3;
txt_tigris_length[phase.phase_er] = 3;
txt_tigris_length[phase.phase_er2] = 3;
txt_tigris_length[phase.phase_end] = 5;
var file = file_text_open_read("feyAcademy_tigris.txt");
for(var i = 0; i < 32; i+=1)
{
	txt_tigris[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

txt_maria = ds_list_create();
txt_maria_length[phase.phase_start] = 4;
txt_maria_length[phase.phase_ff] = 3;
txt_maria_length[phase.phase_ww] = 4;
txt_maria_length[phase.phase_af] = 4;
txt_maria_length[phase.phase_sp] = 5;
txt_maria_length[phase.phase_ss] = 4;
txt_maria_length[phase.phase_ft] = 3;
txt_maria_length[phase.phase_aa] = 2;
txt_maria_length[phase.phase_aa2] = 2;
txt_maria_length[phase.phase_er] = 3;
txt_maria_length[phase.phase_er2] = 3;
txt_maria_length[phase.phase_end] = 4;
var file = file_text_open_read("feyAcademy_maria.txt");
for(var i = 0; i < 36; i+=1)
{
	txt_maria[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

txt_hana = ds_list_create();
txt_hana_length[phase.phase_start] = 2;
txt_hana_length[phase.phase_ff] = 1;
txt_hana_length[phase.phase_ww] = 3;
txt_hana_length[phase.phase_af] = 3;
txt_hana_length[phase.phase_sp] = 1;
txt_hana_length[phase.phase_ss] = 3;
txt_hana_length[phase.phase_ft] = 1;
txt_hana_length[phase.phase_aa] = 3;
txt_hana_length[phase.phase_aa2] = 3;
txt_hana_length[phase.phase_er] = 3;
txt_hana_length[phase.phase_er2] = 3;
txt_hana_length[phase.phase_end] = 3;
var file = file_text_open_read("feyAcademy_hana.txt");
for(var i = 0; i < 23; i+=1)
{
	txt_hana[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

txt_enya = ds_list_create();
txt_enya_length[phase.phase_start] = 3;
txt_enya_length[phase.phase_ff] = 3;
txt_enya_length[phase.phase_ww] = 2;
txt_enya_length[phase.phase_af] = 3;
txt_enya_length[phase.phase_sp] = 3;
txt_enya_length[phase.phase_ss] = 3;
txt_enya_length[phase.phase_ft] = 2;
txt_enya_length[phase.phase_aa] = 3;
txt_enya_length[phase.phase_aa2] = 3;
txt_enya_length[phase.phase_er] = 3;
txt_enya_length[phase.phase_er2] = 3;
txt_enya_length[phase.phase_end] = 3;
var file = file_text_open_read("feyAcademy_enya.txt");
for(var i = 0; i < 28; i+=1)
{
	txt_enya[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

txt_lapis = ds_list_create();
txt_lapis_length[phase.phase_start] = 3;
txt_lapis_length[phase.phase_ff] = 2;
txt_lapis_length[phase.phase_ww] = 3;
txt_lapis_length[phase.phase_af] = 3;
txt_lapis_length[phase.phase_sp] = 1;
txt_lapis_length[phase.phase_ss] = 2;
txt_lapis_length[phase.phase_ft] = 3;
txt_lapis_length[phase.phase_aa] = 3;
txt_lapis_length[phase.phase_aa2] = 3;
txt_lapis_length[phase.phase_er] = 3;
txt_lapis_length[phase.phase_er2] = 3;
txt_lapis_length[phase.phase_end] = 3;
var file = file_text_open_read("feyAcademy_lapis.txt");
for(var i = 0; i < 26; i+=1)
{
	txt_lapis[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

txt_blanche = ds_list_create();
txt_blanche_length[phase.phase_start] = 3;
txt_blanche_length[phase.phase_ff] = 2;
txt_blanche_length[phase.phase_ww] = 3;
txt_blanche_length[phase.phase_af] = 3;
txt_blanche_length[phase.phase_sp] = 3;
txt_blanche_length[phase.phase_ss] = 3;
txt_blanche_length[phase.phase_ft] = 3;
txt_blanche_length[phase.phase_aa] = 4;
txt_blanche_length[phase.phase_aa2] = 4;
txt_blanche_length[phase.phase_er] = 3;
txt_blanche_length[phase.phase_er2] = 3;
txt_blanche_length[phase.phase_end] = 4;
var file = file_text_open_read("feyAcademy_blanche.txt");
for(var i = 0; i < 31; i+=1)
{
	txt_blanche[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

txt_arianna = ds_list_create();
txt_arianna_length[phase.phase_start] = 5;
txt_arianna_length[phase.phase_ff] = 4;
txt_arianna_length[phase.phase_ww] = 4;
txt_arianna_length[phase.phase_af] = 7;
txt_arianna_length[phase.phase_sp] = 5;
txt_arianna_length[phase.phase_ss] = 5;
txt_arianna_length[phase.phase_ft] = 5;
txt_arianna_length[phase.phase_aa] = 6;
txt_arianna_length[phase.phase_aa2] = 6;
txt_arianna_length[phase.phase_er] = 6;
txt_arianna_length[phase.phase_er2] = 6;
txt_arianna_length[phase.phase_end] = 7;
var file = file_text_open_read("feyAcademy_arianna.txt");
for(var i = 0; i < 54; i+=1)
{
	txt_arianna[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

txt_gina = ds_list_create();
txt_gina_length[phase.phase_start] = 3;
txt_gina_length[phase.phase_ff] = 1;
txt_gina_length[phase.phase_ww] = 3;
txt_gina_length[phase.phase_af] = 3;
txt_gina_length[phase.phase_sp] = 3;
txt_gina_length[phase.phase_ss] = 3;
txt_gina_length[phase.phase_ft] = 4;
txt_gina_length[phase.phase_aa] = 2;
txt_gina_length[phase.phase_aa2] = 2;
txt_gina_length[phase.phase_er] = 2;
txt_gina_length[phase.phase_er2] = 2;
txt_gina_length[phase.phase_end] = 2;
var file = file_text_open_read("feyAcademy_gina.txt");
for(var i = 0; i < 26; i+=1)
{
	txt_gina[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

txt_nyx = ds_list_create();
txt_nyx_length[phase.phase_start] = 3;
txt_nyx_length[phase.phase_ff] = 3;
txt_nyx_length[phase.phase_ww] = 2;
txt_nyx_length[phase.phase_af] = 1;
txt_nyx_length[phase.phase_sp] = 2;
txt_nyx_length[phase.phase_ss] = 1;
txt_nyx_length[phase.phase_ft] = 2;
txt_nyx_length[phase.phase_aa] = 3;
txt_nyx_length[phase.phase_aa2] = 3;
txt_nyx_length[phase.phase_er] = 3;
txt_nyx_length[phase.phase_er2] = 3;
txt_nyx_length[phase.phase_end] = 2;
var file = file_text_open_read("feyAcademy_nyx.txt");
for(var i = 0; i < 22; i+=1)
{
	txt_nyx[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

txt_bloom = ds_list_create();
txt_bloom_length[phase.phase_start] = 2;
txt_bloom_length[phase.phase_ff] = 4;
txt_bloom_length[phase.phase_ww] = 3;
txt_bloom_length[phase.phase_af] = 2;
txt_bloom_length[phase.phase_sp] = 1;
txt_bloom_length[phase.phase_ss] = 3;
txt_bloom_length[phase.phase_ft] = 2;
txt_bloom_length[phase.phase_aa] = 3;
txt_bloom_length[phase.phase_aa2] = 3;
txt_bloom_length[phase.phase_er] = 4;
txt_bloom_length[phase.phase_er2] = 4;
txt_bloom_length[phase.phase_end] = 2;
var file = file_text_open_read("feyAcademy_bloom.txt");
for(var i = 0; i < 26; i+=1)
{
	txt_bloom[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

txt_bobble = ds_list_create();
txt_bobble_length[phase.phase_start] = 5;
txt_bobble_length[phase.phase_ff] = 4;
txt_bobble_length[phase.phase_ww] = 2;
txt_bobble_length[phase.phase_af] = 2;
txt_bobble_length[phase.phase_sp] = 3;
txt_bobble_length[phase.phase_ss] = 1;
txt_bobble_length[phase.phase_ft] = 3;
txt_bobble_length[phase.phase_aa] = 4;
txt_bobble_length[phase.phase_aa2] = 4;
txt_bobble_length[phase.phase_er] = 3;
txt_bobble_length[phase.phase_er2] = 3;
txt_bobble_length[phase.phase_end] = 3;
var file = file_text_open_read("feyAcademy_bobble.txt");
for(var i = 0; i < 30; i+=1)
{
	txt_bobble[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

txt_luna = ds_list_create();
txt_luna_length[phase.phase_start] = 3;
txt_luna_length[phase.phase_ff] = 2;
txt_luna_length[phase.phase_ww] = 2;
txt_luna_length[phase.phase_af] = 1;
txt_luna_length[phase.phase_sp] = 3;
txt_luna_length[phase.phase_ss] = 3;
txt_luna_length[phase.phase_ft] = 2;
txt_luna_length[phase.phase_aa] = 2;
txt_luna_length[phase.phase_aa2] = 2;
txt_luna_length[phase.phase_er] = 2;
txt_luna_length[phase.phase_er2] = 2;
txt_luna_length[phase.phase_end] = 4;
var file = file_text_open_read("feyAcademy_luna.txt");
for(var i = 0; i < 24; i+=1)
{
	txt_luna[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

txt_clover = ds_list_create();
txt_clover_length[phase.phase_start] = 4;
txt_clover_length[phase.phase_ff] = 2;
txt_clover_length[phase.phase_ww] = 2;
txt_clover_length[phase.phase_af] = 3;
txt_clover_length[phase.phase_sp] = 1;
txt_clover_length[phase.phase_ss] = 2;
txt_clover_length[phase.phase_ft] = 3;
txt_clover_length[phase.phase_aa] = 4;
txt_clover_length[phase.phase_aa2] = 4;
txt_clover_length[phase.phase_er] = 4;
txt_clover_length[phase.phase_er2] = 4;
txt_clover_length[phase.phase_end] = 2;
var file = file_text_open_read("feyAcademy_clover.txt");
for(var i = 0; i < 27; i+=1)
{
	txt_clover[|i] = file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);





