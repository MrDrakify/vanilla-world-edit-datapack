# Begin WE Main Remove function.
# Subtraction checking counter.
scoreboard players add @e[tag=we.stand,name=we.mainer] we.db 1
# Subtraction checking.
execute as @s[tag=!we.unmaining] run scoreboard players operation @e[tag=we.stand,name=we.proxy1] we.db = @p[tag=!we.unmaining.tried] we.uuid
execute as @s[tag=!we.unmaining] run scoreboard players operation @e[tag=we.stand,name=we.proxy2] we.db = @s we.pr.we_main
execute as @s[tag=!we.unmaining] run scoreboard players operation @e[tag=we.stand,name=we.proxy1] we.db -= @e[tag=we.stand,name=we.proxy2] we.db
execute as @s[tag=!we.unmaining] if entity @e[tag=we.stand,name=we.proxy1,scores={we.db=0}] run tag @s add we.unmaining
execute as @s[tag=!we.unmaining] run tag @p[tag=!we.unmaining.tried] add we.unmaining.tried
execute as @s[tag=!we.unmaining] run tag @s add we.unmaining.noreset
execute as @s[tag=!we.unmaining] run scoreboard players reset @a[tag=!we.unmaining.noreset] we.pr.we_main
execute as @s[tag=!we.unmaining] run tag @s remove we.unmaining.noreset
scoreboard players set @e[tag=we.stand,name=we.proxy1] we.db 0
scoreboard players set @e[tag=we.stand,name=we.proxy2] we.db 0
# Tagging.
execute as @s[tag=we.unmaining] run tag @p[tag=!we.unmaining.tried] remove we.perm.main
execute as @s[tag=we.unmaining] run tellraw @p[tag=!we.unmaining.tried] [{"text":"\u00A76WE \u00A78: \u00A72Sorry... "},{"selector":"@s","color":"green"},{"text":" has just removed your World Edit User access...","color":"dark_green"}]
execute as @s[tag=we.unmaining] run tellraw @s [{"text":"\u00A76WE \u00A78: \u00A72You have just successfully removed ","color":"dark_green"},{"selector":"@p[tag=!we.unmaining.tried]","color":"green"},{"text":"'s World Edit User access!","color":"dark_green"}]
execute as @s[tag=we.unmaining] run tellraw @a[tag=we.perm.we_main] [{"text":"\u00A76WE \u00A78: "},{"selector":"@s","color":"green"},{"text":" \u00A72has just successfully removed ","color":"dark_green"},{"selector":"@p[tag=!we.unmaining.tried]","color":"green"},{"text":"'s World Edit User access! Uh oh...","color":"dark_green"}]
execute as @s[tag=we.unmaining] run scoreboard players reset @s we.pr.we_main
execute as @s[tag=we.unmaining] run scoreboard players enable @a we.pr.we_main
execute as @s[tag=we.unmaining] run tag @a remove we.unmaining.tried
execute as @s[tag=we.unmaining] run tag @a remove we.unmaining
# Resetting.
execute if entity @e[tag=we.stand,name=we.mainer,scores={we.db=200..}] at @s run function we-msges:uuid_not_found
