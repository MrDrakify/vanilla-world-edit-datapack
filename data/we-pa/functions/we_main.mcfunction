# Begin WE Main Add function.
# Subtraction checking counter.
scoreboard players add @e[tag=we.stand,name=we.mainer] we.db 1
# Subtraction checking.
execute as @s[tag=!we.maining] run scoreboard players operation @e[tag=we.stand,name=we.proxy1] we.db = @p[tag=!we.maining.tried] we.uuid
execute as @s[tag=!we.maining] run scoreboard players operation @e[tag=we.stand,name=we.proxy2] we.db = @s we.pa.we_main
execute as @s[tag=!we.maining] run scoreboard players operation @e[tag=we.stand,name=we.proxy1] we.db -= @e[tag=we.stand,name=we.proxy2] we.db
execute as @s[tag=!we.maining] if entity @e[tag=we.stand,name=we.proxy1,scores={we.db=0}] run tag @s add we.maining
execute as @s[tag=!we.maining] run tag @p[tag=!we.maining.tried] add we.maining.tried
execute as @s[tag=!we.maining] run tag @s add we.maining.noreset
execute as @s[tag=!we.maining] run scoreboard players reset @a[tag=!we.maining.noreset] we.pa.we_main
execute as @s[tag=!we.maining] run tag @s remove we.maining.noreset
scoreboard players set @e[tag=we.stand,name=we.proxy1] we.db 0
scoreboard players set @e[tag=we.stand,name=we.proxy2] we.db 0
# Tagging.
execute as @s[tag=we.maining] run tellraw @p[tag=!we.maining.tried] [{"text":"\u00A76WE \u00A78: \u00A72Congrats! "},{"selector":"@s","color":"green"},{"text":" has just made you a World Edit User! No cheating now! ;)","color":"dark_green"}]
execute as @s[tag=we.maining] run tellraw @s [{"text":"\u00A76WE \u00A78: \u00A72You have just successfully made ","color":"dark_green"},{"selector":"@p[tag=!we.maining.tried]","color":"green"},{"text":" a World Edit User! Be careful!","color":"dark_green"}]
execute as @s[tag=we.maining] run tellraw @a[tag=we.perm.we_main] [{"text":"\u00A76WE \u00A78: "},{"selector":"@s","color":"green"},{"text":" \u00A72has just successfully made ","color":"dark_green"},{"selector":"@p[tag=!we.maining.tried]","color":"green"},{"text":" a World Edit User! Watch out!","color":"dark_green"}]
execute as @s[tag=we.maining] run tag @p[tag=!we.maining.tried] add we.perm.main
execute as @s[tag=we.maining] run scoreboard players reset @s we.pa.we_main
execute as @s[tag=we.maining] run scoreboard players enable @a we.pa.we_main
execute as @s[tag=we.maining] run tag @a remove we.maining.tried
execute as @s[tag=we.maining] run tag @a remove we.maining
# Resetting.
execute if entity @e[tag=we.stand,name=we.mainer,scores={we.db=200..}] at @s run function we-msges:uuid_not_found
