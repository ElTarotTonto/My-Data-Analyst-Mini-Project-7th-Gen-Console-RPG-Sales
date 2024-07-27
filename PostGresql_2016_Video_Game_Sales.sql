-- URL for Raw data https://www.kaggle.com/code/coffeepot/videogame-sales



select count(*)
from public.video_game_sales_2016;

select *
from public.video_game_sales_2016;

select *
from public.video_game_sales_2016
where "Genre" = 'Role-Playing';

-- Need to identify unique rows

select distinct "Platform"
from public.video_game_sales_2016;

select distinct "Genre"
from public.video_game_sales_2016;


select
"Genre",
sum(Case when "Platform" = 'Wii' then "NA_Sales" else 0 end) as Nintendo_Wii,
sum(case when "Platform" = 'NES' then "NA_Sales" else 0 end) as First_gen_Nintendo,
sum(case when "Platform" = 'GB' then "NA_Sales" else 0 end) as Nintendo_Game_Boy,
sum(case when "Platform" = 'DS' then "NA_Sales" else 0 end) as Nintendo_DS,
sum(case when "Platform" = 'X360' then "NA_Sales" else 0 end) as X_Box_360,
sum(case when "Platform" = 'PS3' then "NA_Sales" else 0 end) as Playstation_3,
sum(case when "Platform" = 'PS2' then "NA_Sales" else 0 end) as Playstation_2,
sum(case when "Platform" = 'SNES' then "NA_Sales" else 0 end) as Super_Nintendo,
sum(case when "Platform" = 'GBA' then "NA_Sales" else 0 end) as Nintendo_Game_Boy_Advance,
sum(case when "Platform" = 'PS4' then "NA_Sales" else 0 end) as Playstation_4,
sum(case when "Platform" = '3DS' then "NA_Sales" else 0 end) as Nintendo_3DS,
sum(case when "Platform" = 'N64' then "NA_Sales" else 0 end) as Nintendo_64,
sum(case when "Platform" = 'PS' then "NA_Sales" else 0 end) as Playstation,
sum(case when "Platform" = 'XB' then "NA_Sales" else 0 end) as X_Box,
sum(case when "Platform" = 'PC' then "NA_Sales" else 0 end) as Computer,
sum(case when "Platform" = '2600' then "NA_Sales" else 0 end) as Atari_2600,
sum(case when "Platform" = 'PSP' then "NA_Sales" else 0 end) as Playstation_Portable,
sum(case when "Platform" = 'XOne' then "NA_Sales" else 0 end) as X_Box_One,
sum(case when "Platform" = 'WiiU' then "NA_Sales" else 0 end) as Nintendo_WiiU,
sum(case when "Platform" = 'GC' then "NA_Sales" else 0 end) as Nintendo_GameCube,
sum(case when "Platform" = 'GEN' then "NA_Sales" else 0 end) as Sega_Genesis,
sum(case when "Platform" = 'DC' then "NA_Sales" else 0 end) as Sega_Dreamcast,
sum(case when "Platform" = 'PSV' then "NA_Sales" else 0 end) as Playstation_PortableVita,
sum(case when "Platform" = 'SAT' then "NA_Sales" else 0 end) as Sega_Saturn,
sum(case when "Platform" = 'SCD' then "NA_Sales" else 0 end) as Sega_CD,
sum(case when "Platform" = 'GEN' then "NA_Sales" else 0 end) as Sega_Genesis,
sum(case when "Platform" = 'WS' then "NA_Sales" else 0 end) as Wonderswan,
sum(case when "Platform" = 'NG' then "NA_Sales" else 0 end) as NeoGeo,
sum(case when "Platform" = 'TG16'then "NA_Sales" else 0 end) as TurboGrafx_16,
sum(case when "Platform" = '3DO'then "NA_Sales" else 0 end) as  Interactive_3do,
sum(case when "Platform" = 'GG'then "NA_Sales" else 0 end) as Genesis_Gencore,
sum(case when "Platform" = 'PCFX'then "NA_Sales" else 0 end) as TurboGrafx_16
from public.video_game_sales_2016
where "Genre" = 'Role-Playing' and "Year_of_Release" = '2008'
group by "Genre";


select
"Genre",
sum(Case when "Platform" = 'Wii' then "NA_Sales" else 0 end) as Nintendo_Wii,
sum(case when "Platform" = 'NES' then "NA_Sales" else 0 end) as First_gen_Nintendo,
sum(case when "Platform" = 'GB' then "NA_Sales" else 0 end) as Nintendo_Game_Boy,
sum(case when "Platform" = 'DS' then "NA_Sales" else 0 end) as Nintendo_DS,
sum(case when "Platform" = 'X360' then "NA_Sales" else 0 end) as X_Box_360,
sum(case when "Platform" = 'PS3' then "NA_Sales" else 0 end) as Playstation_3,
sum(case when "Platform" = 'PS2' then "NA_Sales" else 0 end) as Playstation_2,
sum(case when "Platform" = 'SNES' then "NA_Sales" else 0 end) as Super_Nintendo,
sum(case when "Platform" = 'GBA' then "NA_Sales" else 0 end) as Nintendo_Game_Boy_Advance,
sum(case when "Platform" = 'PS4' then "NA_Sales" else 0 end) as Playstation_4,
sum(case when "Platform" = '3DS' then "NA_Sales" else 0 end) as Nintendo_3DS,
sum(case when "Platform" = 'N64' then "NA_Sales" else 0 end) as Nintendo_64,
sum(case when "Platform" = 'PS' then "NA_Sales" else 0 end) as Playstation,
sum(case when "Platform" = 'XB' then "NA_Sales" else 0 end) as X_Box,
sum(case when "Platform" = 'PC' then "NA_Sales" else 0 end) as Computer,
sum(case when "Platform" = '2600' then "NA_Sales" else 0 end) as Atari_2600,
sum(case when "Platform" = 'PSP' then "NA_Sales" else 0 end) as Playstation_Portable,
sum(case when "Platform" = 'XOne' then "NA_Sales" else 0 end) as X_Box_One,
sum(case when "Platform" = 'WiiU' then "NA_Sales" else 0 end) as Nintendo_WiiU,
sum(case when "Platform" = 'GC' then "NA_Sales" else 0 end) as Nintendo_GameCube,
sum(case when "Platform" = 'GEN' then "NA_Sales" else 0 end) as Sega_Genesis,
sum(case when "Platform" = 'DC' then "NA_Sales" else 0 end) as Sega_Dreamcast,
sum(case when "Platform" = 'PSV' then "NA_Sales" else 0 end) as Playstation_PortableVita,
sum(case when "Platform" = 'SAT' then "NA_Sales" else 0 end) as Sega_Saturn,
sum(case when "Platform" = 'SCD' then "NA_Sales" else 0 end) as Sega_CD,
sum(case when "Platform" = 'GEN' then "NA_Sales" else 0 end) as Sega_Genesis,
sum(case when "Platform" = 'WS' then "NA_Sales" else 0 end) as Wonderswan,
sum(case when "Platform" = 'NG' then "NA_Sales" else 0 end) as NeoGeo,
sum(case when "Platform" = 'TG16'then "NA_Sales" else 0 end) as TurboGrafx_16,
sum(case when "Platform" = '3DO'then "NA_Sales" else 0 end) as  Interactive_3do,
sum(case when "Platform" = 'GG'then "NA_Sales" else 0 end) as Genesis_Gencore,
sum(case when "Platform" = 'PCFX'then "NA_Sales" else 0 end) as TurboGrafx_16
from public.video_game_sales_2016
where "Genre" = 'Role-Playing' and "Year_of_Release" in ('2005','2006','2007','2008','2009','2010','2011','2012','2013','2014','2015','2016')
group by "Genre";