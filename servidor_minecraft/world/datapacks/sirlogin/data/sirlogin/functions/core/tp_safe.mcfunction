execute store result entity @s Pos[0] double 1 run scoreboard players get safe_loc_x sl-config
execute store result entity @s Pos[1] double 1 run scoreboard players get safe_loc_y sl-config
execute store result entity @s Pos[2] double 1 run scoreboard players get safe_loc_z sl-config
execute at @s run tp @a[tag=tp_trigger_source,limit=1] ~ ~ ~