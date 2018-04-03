# Begin insufficient permissions file.
# Teller.
tellraw @s [{"text":"\u00A76WE \u00A78: \u00A72Sorry, but you don't have the correct permissions to do this..."}]
# Resetter.
scoreboard players reset @s we.pos1
scoreboard players enable @a we.pos1
scoreboard players reset @s we.pos2
scoreboard players enable @a we.pos2
scoreboard players reset @s we.fill
scoreboard players enable @a we.fill
scoreboard players reset @s we.choose
scoreboard players enable @a we.choose
scoreboard players reset @s we.permadd.edit_perms
scoreboard players enable @a we.permadd.edit_perms
scoreboard players reset @s we.permadd.we_main
scoreboard players enable @a we.permadd.we_main
