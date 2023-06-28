maps_w = 10;
maps_h = 10;

maps_w_2 = 16;
maps_h_2 = 16;

maps_w_3 = 25;
maps_h_3 = 25;

// player maps


pmaps_ff_f1 = ds_grid_create(maps_w,maps_h);
pmaps_ff_f2 = ds_grid_create(maps_w,maps_h);
pmaps_ff_f3 = ds_grid_create(maps_w,maps_h);
pmaps_ff_f4 = ds_grid_create(maps_w,maps_h);

pmaps_ww_f1 = ds_grid_create(maps_w_2,maps_h_2);
pmaps_ww_f2 = ds_grid_create(maps_w_2,maps_h_2);
pmaps_ww_f3 = ds_grid_create(maps_w_2,maps_h_2);
pmaps_ww_f4 = ds_grid_create(maps_w_2,maps_h_2);

pmaps_af_f1 = ds_grid_create(maps_w_2,maps_h_2);
pmaps_af_f2 = ds_grid_create(maps_w_2,maps_h_2);
pmaps_af_f3 = ds_grid_create(maps_w_2,maps_h_2);
pmaps_af_f4 = ds_grid_create(maps_w_2,maps_h_2);

pmaps_sp_f1 = ds_grid_create(maps_w_2,maps_h_2);
pmaps_sp_f2 = ds_grid_create(maps_w_2,maps_h_2);
pmaps_sp_f3 = ds_grid_create(maps_w_2,maps_h_2);
pmaps_sp_f4 = ds_grid_create(maps_w_2,maps_h_2);

pmaps_ss_f1 = ds_grid_create(maps_w_2,maps_h_2);
pmaps_ss_f2 = ds_grid_create(maps_w_2,maps_h_2);
pmaps_ss_f3 = ds_grid_create(maps_w_2,maps_h_2);
pmaps_ss_f4 = ds_grid_create(maps_w_2,maps_h_2);

pmaps_ft_f1 = ds_grid_create(maps_w_2,maps_h_2);
pmaps_ft_f2 = ds_grid_create(maps_w_2,maps_h_2);
pmaps_ft_f3 = ds_grid_create(maps_w_2,maps_h_2);
pmaps_ft_f4 = ds_grid_create(maps_w_2,maps_h_2);

pmaps_aa_f1 = ds_grid_create(maps_w_3,maps_h_3);
pmaps_aa_f2 = ds_grid_create(maps_w_3,maps_h_3);
pmaps_aa_f3 = ds_grid_create(maps_w_3,maps_h_3);
pmaps_aa_f4 = ds_grid_create(maps_w_3,maps_h_3);

pmaps_er_f1 = ds_grid_create(maps_w_3,maps_h_3);
pmaps_er_f2 = ds_grid_create(maps_w_3,maps_h_3);
pmaps_er_f3 = ds_grid_create(maps_w_3,maps_h_3);
pmaps_er_f4 = ds_grid_create(maps_w_3,maps_h_3);

for(var i = 0; i < maps_w; i++)
{
	for(var j = 0; j < maps_h; j++)
	{	
		pmaps_ff_f1[# i, j] = false;
		pmaps_ff_f2[# i, j] = false;
		pmaps_ff_f3[# i, j] = false;
		pmaps_ff_f4[# i, j] = false;
	}
}

for(var i = 0; i < maps_w_2; i++)
{
	for(var j = 0; j < maps_h_2; j++)
	{
		pmaps_ww_f1[# i, j] = false;
		pmaps_ww_f2[# i, j] = false;
		pmaps_ww_f3[# i, j] = false;
		pmaps_ww_f4[# i, j] = false;
		
		pmaps_af_f1[# i, j] = false;
		pmaps_af_f2[# i, j] = false;
		pmaps_af_f3[# i, j] = false;
		pmaps_af_f4[# i, j] = false;
		
		pmaps_sp_f1[# i, j] = false;
		pmaps_sp_f2[# i, j] = false;
		pmaps_sp_f3[# i, j] = false;
		pmaps_sp_f4[# i, j] = false;
		
		pmaps_ss_f1[# i, j] = false;
		pmaps_ss_f2[# i, j] = false;
		pmaps_ss_f3[# i, j] = false;
		pmaps_ss_f4[# i, j] = false;
		
		pmaps_ft_f1[# i, j] = false;
		pmaps_ft_f2[# i, j] = false;
		pmaps_ft_f3[# i, j] = false;
		pmaps_ft_f4[# i, j] = false;
	}
}

for(var i = 0; i < maps_w_3; i++)
{
	for(var j = 0; j < maps_h_3; j++)
	{
		pmaps_aa_f1[# i, j] = false;
		pmaps_aa_f2[# i, j] = false;
		pmaps_aa_f3[# i, j] = false;
		pmaps_aa_f4[# i, j] = false;
		
		pmaps_er_f1[# i, j] = false;
		pmaps_er_f2[# i, j] = false;
		pmaps_er_f3[# i, j] = false;
		pmaps_er_f4[# i, j] = false;
	}
}