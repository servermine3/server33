execute store result entity @s Pos[0] double 1 run scoreboard players get @a[tag=tp_trigger_source,limit=1] sl-x1
execute store result entity @s Pos[1] double 1 run scoreboard players get @a[tag=tp_trigger_source,limit=1] sl-y1
execute store result entity @s Pos[2] double 1 run scoreboard players get @a[tag=tp_trigger_source,limit=1] sl-z1
execute at @s run tp @a[tag=tp_trigger_source,limit=1] ~ ~ ~