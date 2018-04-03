# Begin UUID Profiling.
# Tagging and outputting.
execute if entity @s[tag=!we.zeroed] run scoreboard players set @s we.uuid 0
execute as @e[tag=we.stand,name=we.main] run scoreboard players add @s we.uuid 1
execute if entity @e[tag=we.stand,name=we.main] run scoreboard players operation @s we.uuid = @e[tag=we.stand,name=we.main] we.uuid
execute if entity @e[tag=we.stand,name=we.main] run tellraw @a[tag=we.admin] [{"text":"\u00A76WE UUID Profiler \u00A78: \u00A72I just tagged "},{"selector":"@s","color":"green"},{"text":" \u00A72with a 'we.uuid' of ","color":"dark_green"},{"score":{"name":"@s","objective":"we.uuid"},"color":"gold"}]
execute if entity @s[tag=!we.zeroed] run tag @s add we.zeroed
# Tagging.
execute if entity @e[tag=we.stand,name=we.main] run tag @s add we.uuided.tagged
