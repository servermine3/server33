scoreboard players add @s sl-afk-time 1
execute if score afk_time sl-config matches 1.. if score @s sl-afk-time >= afk_time sl-config run function sirlogin:config/kick
execute if score afk_time sl-config matches 0 if score @s sl-afk-time matches 1200 run function sirlogin:config/kick