execute if score enable sl-config matches 1 as @a run function sirlogin:core

execute if score enable sl-config matches ..-1 run scoreboard players reset enable sl-config
execute if score enable sl-config matches 2.. run scoreboard players reset enable sl-config

execute if score block_move sl-config matches ..-1 run scoreboard players reset block_move sl-config
execute if score block_move sl-config matches 2.. run scoreboard players reset block_move sl-config

execute if score safe_loc sl-config matches ..-1 run scoreboard players reset safe_loc sl-config
execute if score safe_loc sl-config matches 2.. run scoreboard players reset safe_loc sl-config

execute if score loc_back sl-config matches ..-1 run scoreboard players reset loc_back sl-config
execute if score loc_back sl-config matches 2.. run scoreboard players reset loc_back sl-config

execute if score blindness sl-config matches ..-1 run scoreboard players reset blindness sl-config
execute if score blindness sl-config matches 2.. run scoreboard players reset blindness sl-config

execute if score spectator sl-config matches ..-1 run scoreboard players reset spectator sl-config
execute if score spectator sl-config matches 2.. run scoreboard players reset spectator sl-config

execute if score afk sl-config matches ..-1 run scoreboard players reset afk sl-config
execute if score afk sl-config matches 2.. run scoreboard players reset afk sl-config