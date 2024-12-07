tag @s remove moved
tag @s remove blockmove
scoreboard players set @s sl-afk-time 0
scoreboard players set @s sl-wrong 0
scoreboard players reset @s register
scoreboard players reset @s login
scoreboard players enable @s logout
scoreboard players enable @s changepass
scoreboard players add @s sl-loc-time 1
execute if score @s sl-loc-time matches 100.. run scoreboard players set @s sl-loc-time 0
execute if score @s sl-loc-time matches 1 store result score @s sl-x run data get entity @s Pos[0] 1
execute if score @s sl-loc-time matches 1 store result score @s sl-y run data get entity @s Pos[1] 1
execute if score @s sl-loc-time matches 1 store result score @s sl-z run data get entity @s Pos[2] 1
execute if score @s sl-loc-time matches 1 store result score @s sl-r0 run data get entity @s Rotation[0] 1
execute if score @s sl-loc-time matches 1 store result score @s sl-r1 run data get entity @s Rotation[1] 1
execute if score @s changepass matches 1.. run scoreboard players operation @s sl-db-pass = @s changepass
execute if score @s changepass matches 1.. run function sirlogin:config/msg/changepass
execute if score @s changepass matches 1.. run scoreboard players set @s changepass 0
execute if score @s logout matches 1.. run tag @s remove logged
execute if score @s logout matches 1.. run scoreboard players set @s logout 0
execute if score @s sl-db-pass matches ..0 run tag @s remove logged