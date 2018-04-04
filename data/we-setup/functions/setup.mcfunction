# Begin setup file.
tellraw @a [{"text":"\u00A76WE Setup \u00A78: \u00A72Starting setup for Vanilla World Edit \u00A78[\u00A7ev0.0.12\u00A78]","color":"dark_green"}]
# Trigger setup.
tellraw @a [{"text":"\u00A76WE Setup \u00A78: \u00A72Setting up triggers..."}]
scoreboard objectives add we.help trigger WE: Help
scoreboard objectives add we.pos1 trigger WE: Pos1
scoreboard objectives add we.pos2 trigger WE: Pos2
scoreboard objectives add we.fill trigger WE: Fill
scoreboard objectives add we.choose trigger WE: Choose
scoreboard objectives add we.seealluuids trigger WE: See All UUIDs

scoreboard objectives add we.admin.t_u_p trigger WE: Toggle UUID Profiling

scoreboard objectives add we.pa.admin trigger WE: WE Admin
scoreboard objectives add we.pa.edit_perms trigger WE: Edit Perms
scoreboard objectives add we.pa.we_main trigger WE: WE Main

scoreboard objectives add we.pr.admin trigger WE: WE Admin
scoreboard objectives add we.pr.edit_perms trigger WE: Edit Perms
scoreboard objectives add we.pr.we_main trigger WE: WE Main
# Trigger enabling.
tellraw @a [{"text":"\u00A76WE Setup \u00A78: \u00A72Enabling triggers..."}]
scoreboard players enable @a we.help
scoreboard players enable @a we.pos1
scoreboard players enable @a we.pos2
scoreboard players enable @a we.fill
scoreboard players enable @a we.choose
scoreboard players enable @a we.seealluuids

scoreboard players enable @a we.admin.t_u_p

scoreboard players enable @a we.pa.admin
scoreboard players enable @a we.pa.edit_perms
scoreboard players enable @a we.pa.we_main

scoreboard players enable @a we.pr.admin
scoreboard players enable @a we.pr.edit_perms
scoreboard players enable @a we.pr.we_main
# Data point setup.
tellraw @a [{"text":"\u00A76WE Setup \u00A78: \u00A72Setting up data points..."}]
scoreboard objectives add we.currblock dummy World Edit: Current Block
scoreboard objectives add we.uuid dummy World Edit: UUID
scoreboard objectives add we.db dummy World Edit: Database
# WE Database Prior Bug Fixes.
scoreboard players operation OLD_UUID we.db = @e[tag=we.stand,name=we.main] we.uuid
# WE Database Setup.
tellraw @a [{"text":"\u00A76WE Setup \u00A78: \u00A72Setting up World Edit Database... Using X+,Z+ coordinates...","color":"dark_green"}]
execute as @e[tag=we.stand,name=we.main] run kill @s
summon armor_stand 0 255 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"{\"text\":\"we.main\",\"color\":\"gold\"}",Tags:["we.stand"]}
execute as @e[tag=we.stand,name=we.proxy1] run kill @s
summon armor_stand 1 255 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"{\"text\":\"we.proxy1\",\"color\":\"gold\"}",Tags:["we.stand"]}
execute as @e[tag=we.stand,name=we.proxy2] run kill @s
summon armor_stand 0 255 1 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"{\"text\":\"we.proxy2\",\"color\":\"gold\"}",Tags:["we.stand"]}
execute as @e[tag=we.stand,name=we.proxy3] run kill @s
summon armor_stand 2 255 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"{\"text\":\"we.proxy3\",\"color\":\"gold\"}",Tags:["we.stand"]}
execute as @e[tag=we.stand,name=we.adminer] run kill @s
summon armor_stand 1 255 1 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"{\"text\":\"we.adminer\",\"color\":\"gold\"}",Tags:["we.stand"]}
execute as @e[tag=we.stand,name=we.mainer] run kill @s
summon armor_stand 0 255 2 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"{\"text\":\"we.mainer\",\"color\":\"gold\"}",Tags:["we.stand"]}
execute as @e[tag=we.stand,name=we.playersonline] run kill @s
summon armor_stand 3 255 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"{\"text\":\"we.playersonline\",\"color\":\"gold\"}",Tags:["we.stand"]}
# WE Database Post Bug Fixes.
scoreboard players operation @e[tag=we.stand,name=we.main] we.uuid = OLD_UUID we.db
#more to come.
# WE Admin.
tellraw @s [{"text":"\u00A76WE Setup \u00A78: \u00A72Setting you as a WE Admin."}]
tellraw @s [{"text":"\u00A76WE Setup \u00A78: \u00A72If this isn't correct, you can always just do ","color":"dark_green"},{"text":"/trigger we.pr.admin set <You're UUID>"}]
tag @s add we.perm.admin
tag @s add we.perm.main
# WE UUID Profiling.
tellraw @a[tag=we.perm.admin] [{"text":"\u00A76WE Setup \u00A78: \u00A72Setting up UUID Profiling..."}]
tellraw @a[tag=we.perm.admin] [{"text":"\u00A76WE Setup \u00A78: \u00A72If you have another datapack handling this (must use 'we.uuid'), you can always just do ","color":"dark_green"},{"text":"/trigger we.admin.t_u_p"}]
tag @e[tag=we.stand,name=we.main] add we.profiling.true
