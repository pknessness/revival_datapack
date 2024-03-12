scoreboard players add @a[scores={Motionless=3600..}] AFKTime 1

execute as @a store result score @s Xmomentum run data get entity @s Motion[0] 100
execute as @a store result score @s Ymomentum run data get entity @s Motion[1] 100
execute as @a store result score @s Zmomentum run data get entity @s Motion[2] 100
execute as @a run scoreboard players operation @s Xmomentum += @s Ymomentum
execute as @a run scoreboard players operation @s Xmomentum += @s Zmomentum

scoreboard players add $SubTimer CycleTimer 1
execute if score $SubTimer CycleTimer matches 100.. run function revival:cycle
