# Begin Admin Remove function.
# Subtraction checking counter.
scoreboard players add @e[tag=we.stand,name=we.adminer] we.db 1
# Subtraction checking.
execute as @s[tag=!we.unadmining] run scoreboard players operation @e[tag=we.stand,name=we.proxy1] we.db = @p[tag=!we.unadmining.tried] we.uuid
execute as @s[tag=!we.unadmining] run scoreboard players operation @e[tag=we.stand,name=we.proxy2] we.db = @s we.pr.admin
execute as @s[tag=!we.unadmining] run scoreboard players operation @e[tag=we.stand,name=we.proxy1] we.db -= @e[tag=we.stand,name=we.proxy2] we.db
execute as @s[tag=!we.unadmining] if entity @e[tag=we.stand,name=we.proxy1,scores={we.db=0}] run tag @s add we.unadmining
execute as @s[tag=!we.unadmining] run tag @p[tag=!we.unadmining.tried] add we.unadmining.tried
execute as @s[tag=!we.unadmining] run tag @s add we.unadmining.noreset
execute as @s[tag=!we.unadmining] run scoreboard players reset @a[tag=!we.unadmining.noreset] we.pr.admin
execute as @s[tag=!we.unadmining] run tag @s remove we.unadmining.noreset
scoreboard players set @e[tag=we.stand,name=we.proxy1] we.db 0
scoreboard players set @e[tag=we.stand,name=we.proxy2] we.db 0
# Tagging.
execute as @s[tag=we.unadmining] run tag @p[tag=!we.unadmining.tried] remove we.perm.admin
execute as @s[tag=we.unadmining] run tellraw @p[tag=!we.unadmining.tried] [{"text":"\u00A76WE \u00A78: \u00A72Sorry... "},{"selector":"@s","color":"green"},{"text":" has just removed your World Edit Admin access...","color":"dark_green"}]
execute as @s[tag=we.unadmining] run tellraw @s [{"text":"\u00A76WE \u00A78: \u00A72You have just successfully removed ","color":"dark_green"},{"selector":"@p[tag=!we.unadmining.tried]","color":"green"},{"text":"'s World Edit Admin access!","color":"dark_green"}]
execute as @s[tag=we.unadmining] run tellraw @a[tag=we.perm.admin] [{"text":"\u00A76WE \u00A78: "},{"selector":"@s","color":"green"},{"text":" \u00A72has just successfully removed ","color":"dark_green"},{"selector":"@p[tag=!we.unadmining.tried]","color":"green"},{"text":"'s World Edit Admin access! Uh oh...","color":"dark_green"}]
execute as @s[tag=we.unadmining] run tag @a remove we.unadmining.tried
execute as @s[tag=we.unadmining] run tag @a remove we.unadmining
# Resetting.
scoreboard players reset @s we.pr.admin
scoreboard players enable @a we.pr.admin
execute if entity @e[tag=we.stand,name=we.adminer,scores={we.db=200..}] at @s run function we-msges:uuid_not_found
