# Begin insufficient permissions file.
# Tellers.
tellraw @s [{"text":"\u00A76WE \u00A78: \u00A72Sorry, but you don't have the correct permissions to do this...","color":"dark_green"}]
tellraw @a[tag=we.perm.admin] [{"text":"\u00A76WE \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried to run a command that they don't have access to.","color":"dark_green"}]
# Resetters.
scoreboard players reset @s we.pos1
scoreboard players enable @a we.pos1
scoreboard players reset @s we.pos2
scoreboard players enable @a we.pos2
scoreboard players reset @s we.fill
scoreboard players enable @a we.fill
scoreboard players reset @s we.choose
scoreboard players enable @a we.choose
scoreboard players reset @s we.seealluuids
scoreboard players enable @a we.seealluuids

scoreboard players reset @s we.admin.t_u_p
scoreboard players enable @a we.admin.t_u_p

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
