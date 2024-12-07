function sirlogin:install
function sirlogin:config/config
tag @a remove moved
tag @a remove blockmove
scoreboard players add @a sl-db-pass 0
scoreboard players set @a sl-afk-time 0
scoreboard players set @a sl-wrong 0
scoreboard players add session sl-session 1