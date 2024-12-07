##Change only last number
##0 = OFF(FALSE), 1 = ON(TRUE)
#if you install on server place datapack on main world (can find on server.properties) 
#and set on server.properties > function-permission-level=4

##enable datapack
scoreboard players set enable sl-config 1

##block move?
scoreboard players set block_move sl-config 1

##effect blindness?
scoreboard players set blindness sl-config 0

##change mode to spectator?
scoreboard players set spectator sl-config 1

##safe location?
scoreboard players set safe_loc sl-config 0
scoreboard players set safe_loc_x sl-config -50
scoreboard players set safe_loc_y sl-config 70
scoreboard players set safe_loc_z sl-config 50

##back to location after login?
scoreboard players set loc_back sl-config 1

##player session live (1sec=20ticks) (default=0 = 1hour(72000))
scoreboard players set session_live sl-config 0

#time send auth message
scoreboard players set me_time sl-config 100

#############(not work on singleplayer)#############
##kick if stay afk on auth?
scoreboard players set afk sl-config 1

##time allow afk   (1sec=20ticks) (default=0 = 1minute(1200))
scoreboard players set afk_time sl-config 0

##kick if player write wrong password  (1,2,3,4,5,6...=count wrong passwords on session  0-disable)
scoreboard players set wrong_kick sl-config 5
#############(not work on singleplayer)#############
