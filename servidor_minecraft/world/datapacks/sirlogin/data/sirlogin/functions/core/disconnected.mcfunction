execute if score safe_loc sl-config matches 1 as @s[tag=!moved] run function sirlogin:core/safe_loc
execute if score block_move sl-config matches 1 run function sirlogin:core/block_move
execute if score afk sl-config matches 1 run function sirlogin:core/afk
execute if score blindness sl-config matches 0 run effect clear @s minecraft:blindness
execute if score blindness sl-config matches 1 run effect give @s minecraft:blindness 1000000 10
execute if score @s sl-db-pass matches 1.. if score wrong_kick sl-config matches 1.. run function sirlogin:core/wrong_kick


execute if score spectator sl-config matches 0 if score @s sl-gamemode matches 0 run gamemode survival @s
execute if score spectator sl-config matches 0 if score @s sl-gamemode matches 1 run gamemode creative @s
execute if score spectator sl-config matches 0 if score @s sl-gamemode matches 3 run gamemode adventure @s
execute as @s[gamemode=survival] run scoreboard players set @s sl-gamemode 0
execute as @s[gamemode=creative] run scoreboard players set @s sl-gamemode 1
execute as @s[gamemode=adventure] run scoreboard players set @s sl-gamemode 2
execute if score spectator sl-config matches 1 as @s[gamemode=!spectator] run gamemode spectator @s
scoreboard players reset @s logout
scoreboard players reset @s changepass
execute if score @s sl-db-pass matches ..0 run scoreboard players enable @s register
execute if score @s sl-db-pass matches ..0 run scoreboard players reset @s login
execute if score @s sl-db-pass matches 1.. run scoreboard players enable @s login
execute if score @s sl-db-pass matches 1.. run scoreboard players reset @s register

execute if score me_time sl-loop matches 11.. run scoreboard players set me_time sl-session 1
execute if score me_time sl-session matches 1 if score me_time sl-loop matches 1..10 if score @s sl-db-pass matches ..0 run function sirlogin:config/msg/register
execute if score me_time sl-session matches 1 if score me_time sl-loop matches 1..10 if score @s sl-db-pass matches 1.. run function sirlogin:config/msg/login
execute if score me_time sl-loop matches 1..10 run scoreboard players set me_time sl-session 0

execute if score @s sl-db-pass matches 1.. if score @s login matches 1.. unless score @s login = @s sl-db-pass run function sirlogin:config/msg/wrong_pass
execute if score @s sl-db-pass matches 1.. if score @s login matches 1.. if score @s login = @s sl-db-pass run function sirlogin:core/login
execute if score @s sl-db-pass matches 1.. if score @s login matches 1.. if score @s login = @s sl-db-pass run function sirlogin:config/msg/logged
execute if score @s sl-db-pass matches 1.. run scoreboard players set @s login 0

execute if score @s sl-db-pass matches ..0 if score @s register matches 1.. run function sirlogin:config/msg/registered
execute if score @s sl-db-pass matches ..0 if score @s register matches 1.. run function sirlogin:core/login
execute if score @s sl-db-pass matches ..0 if score @s register matches 1.. run scoreboard players operation @s sl-db-pass = @s register
execute if score @s sl-db-pass matches ..0 run scoreboard players set @s register 0