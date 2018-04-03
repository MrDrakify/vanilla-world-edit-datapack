# Begin UUID Not Found.
# Tellers.
tellraw @s [{"text":"\u00A76WE \u00A78: \u00A72Sorry, but that UUID is either not online or doesn't exist...","color":"dark_green"}]
tellraw @a[tag=we.admin] [{"text":"\u00A76WE \u00A78: "},{"selector":"@s","color":"green"},{"text":" has just tried to use a UUID that either wasn't online or did not exist...","color":"dark_green"}]
# Resetters.
scoreboard players reset @s we.pa.admin
scoreboard players enable @a we.pa.admin
scoreboard players reset @s we.pa.edit_perms
scoreboard players enable @a we.pa.edit_perms
scoreboard players reset @s we.pa.we_main
scoreboard players enable @a we.pa.we_main

scoreboard players reset @s we.pr.admin
scoreboard players enable @a we.pr.admin
scoreboard players reset @s we.pr.edit_perms
scoreboard players enable @a we.pr.edit_perms
scoreboard players reset @s we.pr.we_main
scoreboard players enable @a we.pr.we_main

scoreboard players reset @e[tag=we.stand,name=we.adminer] we.db
