scoreboard players add me_time sl-loop 1
execute if score me_time sl-loop >= me_time sl-config run scoreboard players set me_time sl-loop 0

execute as @s[tag=logged] run function sirlogin:core/logged
execute as @s[tag=!logged] run function sirlogin:core/disconnected
execute as @s[tag=!joined] run function sirlogin:core/joined
execute as @s[scores={sl-leave=1..}] run function sirlogin:core/joined
function sirlogin:core/session
