execute as @s[tag=!blockmove] store result score @s sl-x1 run data get entity @s Pos[0] 1
execute as @s[tag=!blockmove] store result score @s sl-y1 run data get entity @s Pos[1] 1
execute as @s[tag=!blockmove] store result score @s sl-z1 run data get entity @s Pos[2] 1
tag @s add blockmove

execute store result score @s sl-x0 run data get entity @s Pos[0] 1
execute store result score @s sl-y0 run data get entity @s Pos[1] 1
execute store result score @s sl-z0 run data get entity @s Pos[2] 1

scoreboard players set @s sl-walked 1


execute if score safe_loc sl-config matches 1 if score @s sl-x0 = safe_loc_x sl-config if score @s sl-y0 = safe_loc_y sl-config if score @s sl-z0 = safe_loc_z sl-config run scoreboard players set @s sl-walked 0
execute if score safe_loc sl-config matches 1 if score @s sl-walked matches 1 run function sirlogin:core/safe_loc

execute if score safe_loc sl-config matches 0 if score @s sl-x0 = @s sl-x1 if score @s sl-y0 = @s sl-y1 if score @s sl-z0 = @s sl-z1 run scoreboard players set @s sl-walked 0
execute if score safe_loc sl-config matches 0 if score @s sl-walked matches 1 run tag @s add tp_trigger_source
execute if score safe_loc sl-config matches 0 if score @s sl-walked matches 1 run summon area_effect_cloud ~ ~ ~ {Tags:["tp_trigger_target"]}
execute if score safe_loc sl-config matches 0 if score @s sl-walked matches 1 as @e[type=area_effect_cloud,tag=tp_trigger_target,limit=1] run function sirlogin:core/tp_block
execute if score safe_loc sl-config matches 0 if score @s sl-walked matches 1 run tag @s remove tp_trigger_source