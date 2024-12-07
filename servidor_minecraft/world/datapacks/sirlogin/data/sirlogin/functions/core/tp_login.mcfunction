execute store result entity @s Pos[0] double 1 run scoreboard players get @a[tag=tp_trigger_source,limit=1] sl-x
execute store result entity @s Pos[1] double 1 run scoreboard players get @a[tag=tp_trigger_source,limit=1] sl-y
execute store result entity @s Pos[2] double 1 run scoreboard players get @a[tag=tp_trigger_source,limit=1] sl-z
execute store result entity @s Rotation[0] float 1 run scoreboard players get @a[tag=tp_trigger_source,limit=1] sl-r0
execute store result entity @s Rotation[1] float 1 run scoreboard players get @a[tag=tp_trigger_source,limit=1] sl-r1
execute at @s run tp @a[tag=tp_trigger_source,limit=1] ~ ~ ~ ~ ~