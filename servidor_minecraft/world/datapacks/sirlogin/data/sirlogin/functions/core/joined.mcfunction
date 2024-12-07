tag @s add joined
scoreboard players set @s sl-leave 0
tag @s remove moved
tag @s remove blockmove
scoreboard players add @s sl-db-pass 0
scoreboard players set @s sl-afk-time 0
scoreboard players set @s sl-wrong 0
execute unless score @s[tag=logged] sl-session = session sl-session run tag @s[tag=logged] remove logged