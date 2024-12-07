tag @s add moved
tag @s add tp_trigger_source
summon area_effect_cloud ~ ~ ~ {Tags:["tp_trigger_target"]}
execute as @e[type=area_effect_cloud,tag=tp_trigger_target,limit=1] run function sirlogin:core/tp_safe
tag @s remove tp_trigger_source