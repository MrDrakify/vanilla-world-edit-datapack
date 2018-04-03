# Begin see all online uuids.
# Players Online.
scoreboard players set @e[tag=we.stand,name=we.playersonline] we.db 0
execute as @a at @s run scoreboard players add @e[tag=we.stand,name=we.playersonline] we.db 1
# Tellers and taggers.
execute as @p[tag=!we.seeuuid.done] at @s run tellraw @a[scores={we.seealluuids=1..}] [{"text":"\u00A76WE \u00A78: "},{"selector":"@s","color":"green"},{"text":"'s UUID is ","color":"dark_green"},{"score":{"name":"@s","objective":"we.uuid","color":"gold"}}]
execute as @p[tag=!we.seeuuid.done] at @s run scoreboard players add @e[tag=we.stand,name=we.proxy3] we.db 1
execute as @p[tag=!we.seeuuid.done] at @s run tag @s add we.seeuuid.done
# Subtraction Checking.
scoreboard players operation @e[tag=we.stand,name=we.playersonline] we.db -= @e[tag=we.stand,name=we.proxy3] we.db
execute if entity @e[tag=we.stand,name=we.playersonline,scores={we.db=0}] run tag @s add we.seealluuids.done
# Done.
execute as @s[tag=we.seealluuids.done] at @s run scoreboard players reset @e[tag=we.stand,name=we.playersonline] we.db
execute as @s[tag=we.seealluuids.done] at @s run scoreboard players reset @e[tag=we.stand,name=we.proxy3] we.db
execute as @s[tag=we.seealluuids.done] at @s run tag @a remove we.seeuuid.done
execute as @s[tag=we.seealluuids.done] at @s run scoreboard players reset @s we.seealluuids
execute as @s[tag=we.seealluuids.done] at @s run scoreboard players enable @a we.seealluuids
execute as @s[tag=we.seealluuids.done] at @s run tag @s remove we.seealluuids.done
