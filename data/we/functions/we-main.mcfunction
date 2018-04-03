## Begin WE Main function.
## Taggers.
#none as of now.
## Block handler bug flushing.
scoreboard players set @a[scores={we.currblock=..-1},tag=we.perm.main] we.currblock 0
scoreboard players set @a[tag=!we.cbflushed,tag=we.perm.main] we.currblock 0
tag @a[scores={we.currblock=0},tag=!we.cbflushed,tag=we.perm.main] add cbflushed
## Pointers.
#  Main Commands.
execute as @a[scores={we.help=1..},tag=we.perm.main] at @s run function we:help
execute as @a[scores={we.help=1..},tag=!we.perm.main] at @s run function we-msges:ins_perms
execute as @a[scores={we.choose=1..},tag=we.perm.main] at @s run function we:choose
execute as @a[scores={we.choose=1..},tag=!we.perm.main] at @s run function we-msges:ins_perms
execute as @a[scores={we.pos1=1..},tag=we.perm.main] at @s run function we:pos1
execute as @a[scores={we.pos1=1..},tag=!we.perm.main] at @s run function we-msges:ins_perms
execute as @a[scores={we.pos2=1..},tag=we.perm.main] at @s run function we:pos2
execute as @a[scores={we.pos2=1..},tag=!we.perm.main] at @s run function we-msges:ins_perms
execute as @a[scores={we.fill=1..},tag=we.perm.main] at @s run function we:fill
execute as @a[scores={we.fill=1..},tag=!we.perm.main] at @s run function we-msges:ins_perms
execute as @a[scores={we.seealluuids=1..},tag=we.perm.main] at @s run function we:see_uuids
execute as @a[scores={we.seealluuids=1..},tag=!we.perm.main] at @s run function we-msges:ins_perms
#  Perm Add Commands.
execute as @a[scores={we.pa.admin=1..},tag=we.perm.admin] at @s run function we-pa:admin
execute as @a[scores={we.pa.admin=1..},tag=!we.perm.admin] at @s run function we-msges:ins_perms
execute as @a[scores={we.pa.edit_perms=1..},tag=we.perm.edit_perms] at @s run function we-pa:edit_perms
execute as @a[scores={we.pa.edit_perms=1..},tag=!we.perm.edit_perms] at @s run function we-msges:ins_perms
execute as @a[scores={we.pa.we_main=1..},tag=we.perm.edit_perms] at @s run function we-pa:we_main
execute as @a[scores={we.pa.we_main=1..},tag=!we.perm.edit_perms] at @s run function we-msges:ins_perms
#  Perm Rem Commands.
execute as @a[scores={we.pr.admin=1..},tag=we.perm.admin] at @s run function we-pr:admin
execute as @a[scores={we.pr.admin=1..},tag=!we.perm.admin] at @s run function we-msges:ins_perms
execute as @a[scores={we.pr.edit_perms=1..},tag=we.perm.edit_perms] at @s run function we-pr:edit_perms
execute as @a[scores={we.pr.edit_perms=1..},tag=!we.perm.edit_perms] at @s run function we-msges:ins_perms
execute as @a[scores={we.pr.we_main=1..},tag=we.perm.edit_perms] at @s run function we-pr:we_main
execute as @a[scores={we.pr.we_main=1..},tag=!we.perm.edit_perms] at @s run function we-msges:ins_perms
## UUID Profiling.
execute if entity @e[tag=we.stand,name=we.main,tag=we.profiling.true] as @p[tag=!we.uuided.tagged] at @s run function we:uuid_profiling
execute if entity @e[tag=we.stand,name=we.main,tag=we.profiling.true] as @p[scores={we.uuid=0}] at @s run function we:uuid_profiling
