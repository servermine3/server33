tag @s add logged
execute if score spectator sl-config matches 1 if score @s sl-gamemode matches 0 run gamemode survival @s
execute if score spectator sl-config matches 1 if score @s sl-gamemode matches 1 run gamemode creative @s
execute if score spectator sl-config matches 1 if score @s sl-gamemode matches 3 run gamemode adventure @s
execute if score safe_loc sl-config matches 1 if score loc_back sl-config matches 1 run tag @s add tp_trigger_source
execute if score safe_loc sl-config matches 1 if score loc_back sl-config matches 1 run summon area_effect_cloud ~ ~ ~ {Tags:["tp_trigger_target"]}
execute as @s[tag=firstloc] if score safe_loc sl-config matches 1 if score loc_back sl-config matches 1 as @e[type=area_effect_cloud,tag=tp_trigger_target,limit=1] run function sirlogin:core/tp_login
execute if score safe_loc sl-config matches 1 if score loc_back sl-config matches 1 run tag @s remove tp_trigger_source
scoreboard players operation @s sl-session = session sl-session
execute if score blindness sl-config matches 1 run effect clear @s minecraft:blindness
tag @s add firstloc