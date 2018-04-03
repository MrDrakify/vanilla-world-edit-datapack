# Begin Admin Add function.
# Subtraction checking counter.
scoreboard players add @e[tag=we.stand,name=we.adminer] we.db 1
# Subtraction checking.
execute as @s[tag=!we.admining] run scoreboard players operation @e[tag=we.stand,name=we.proxy1] we.db = @p[tag=!we.admining.tried] we.uuid
execute as @s[tag=!we.admining] run scoreboard players operation @e[tag=we.stand,name=we.proxy2] we.db = @s we.pa.admin
execute as @s[tag=!we.admining] run scoreboard players operation @e[tag=we.stand,name=we.proxy1] we.db -= @e[tag=we.stand,name=we.proxy2] we.db
execute as @s[tag=!we.admining] if entity @e[tag=we.stand,name=we.proxy1,scores={we.db=0}] run tag @s add we.admining
execute as @s[tag=!we.admining] run tag @p[tag=!we.admining.tried] add we.admining.tried
execute as @s[tag=!we.admining] run tag @s add we.admining.noreset
execute as @s[tag=!we.admining] run scoreboard players reset @a[tag=!we.admining.noreset] we.pa.admin
execute as @s[tag=!we.admining] run tag @s remove we.admining.noreset
scoreboard players set @e[tag=we.stand,name=we.proxy1] we.db 0
scoreboard players set @e[tag=we.stand,name=we.proxy2] we.db 0
# Tagging.
execute as @s[tag=we.admining] run tag @p[tag=!we.admining.tried] add we.perm.admin
execute as @s[tag=we.admining] run tellraw @p[tag=!we.admining.tried] [{"text":"\u00A76WE \u00A78: \u00A72Congrats! "},{"selector":"@s","color":"green"},{"text":" has just made you a World Edit Admin! Use it wisely! :D","color":"dark_green"}]
execute as @s[tag=we.admining] run tag @a remove we.admining.tried
execute as @s[tag=we.admining] run tag @a remove we.admining
# Resetting.
scoreboard players reset @s we.pa.admin
scoreboard players enable @a we.pa.admin
