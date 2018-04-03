# Begin setup file.
tellraw @a [{"text":"\u00A76WE Setup \u00A78: \u00A72Starting setup for Vanilla World Edit \u00A78[\u00A7ev0.0.1\u00A78]","color":"dark_green"}]
# Trigger setup.
tellraw @a [{"text":"\u00A76WE Setup \u00A78: \u00A72Setting up triggers..."}]
scoreboard objectives add we.help trigger World Edit: Help
scoreboard objectives add we.pos1 trigger World Edit: Pos1
scoreboard objectives add we.pos2 trigger World Edit: Pos2
scoreboard objectives add we.fill trigger World Edit: Fill
scoreboard objectives add we.choose trigger World Edit: Choose

scoreboard objectives add we.admin.toggle_uuid_profiling trigger World Edit (Admin): Toggle UUID Profiling

scoreboard objectives add we.permadd.admin trigger World Edit (Perm Add): WE Admin
scoreboard objectives add we.permadd.edit_perms trigger World Edit (Perm Add): Edit Perms
scoreboard objectives add we.permadd.we_main trigger World Edit (Perm Add): WE Main

scoreboard objectives add we.permrem.admin trigger World Edit (Perm Rem): WE Admin
scoreboard objectives add we.permrem.edit_perms trigger World Edit (Perm Rem): Edit Perms
scoreboard objectives add we.permrem.we_main trigger World Edit (Perm Rem): WE Main
# Data point setup.
tellraw @a [{"text":"\u00A76WE Setup \u00A78: \u00A72Setting up data points..."}]
scoreboard objectives add we.currblock trigger World Edit: Current Block
# WE Database Setup.
tellraw @a [{"text":"\u00A78WE Setup \u00A78: \u00A72Setting up World Edit Database... Using X+,Z+ coordinates...","color":"dark_green"}]
execute as @e[tag=we.stand,name=we.main] run kill @s
summon armor_stand 0 255 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"{\"text\":\"we.main\",\"color\":\"gold\"}",Tags:["we.stand"]}
#more to come.
# WE Admin.
tellraw @s [{"text":"\u00A76WE Setup \u00A78: \u00A72Setting you as a WE Admin."}]
tellraw @s [{"text":"\u00A76WE Setup \u00A78: \u00A72If this isn't correct, you can always just do ","color":"dark_green"},{"text":"/trigger we.permrem.admin set <You're UUID>"}]
tag @s add we.perm.admin
# WE UUID Profiling.
tellraw @a[tag=we.perm.admin] [{"text":"\u00A76WE Setup \u00A78: \u00A72Setting up UUID Profiling..."}]
tellraw @a[tag=we.perm.admin] [{"text":"\u00A76WE Setup \u00A78: \u00A72If you have another datapack handling this (must use 'we.uuid'), you can always just do ","color":"dark_green"},{"text":"/trigger we.admin.toggle_uuid_profiling"}]
tag @e[tag=we.stand,name=we.main] add we.profiling.true
