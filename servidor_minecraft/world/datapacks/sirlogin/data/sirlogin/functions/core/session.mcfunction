scoreboard players add session sl-loop 1
execute if score session_live sl-config matches 0 if score session sl-loop matches 72000 run scoreboard players add session sl-session 1
execute if score session_live sl-config matches 0 if score session sl-loop matches 72000 run scoreboard players set session sl-loop 0
execute if score session_live sl-config matches 1.. if score session sl-loop >= session_live sl-config run scoreboard players add session sl-session 1
execute if score session_live sl-config matches 1.. if score session sl-loop >= session_live sl-config run scoreboard players set session sl-loop 0
