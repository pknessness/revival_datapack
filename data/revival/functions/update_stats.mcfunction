#AFK TIME
scoreboard players add @a Motionless 1
scoreboard players set @a[scores={Walked=1..}] Motionless 0
scoreboard players set @a[scores={Sprinted=1..}] Motionless 0
scoreboard players set @a[scores={Sneaked=1..}] Motionless 0
scoreboard players set @a[scores={Jumped=1..}] Motionless 0
scoreboard players set @a[scores={Flew=1..}] Motionless 0
scoreboard players set @a[scores={WalkedUnderwater=1..}] Motionless 0
scoreboard players set @a[scores={Swimmed=1..}] Motionless 0
scoreboard players set @a[scores={Boated=1..}] Motionless 0
scoreboard players set @a[scores={Minecarted=1..}] Motionless 0
scoreboard players set @a[scores={Pigged=1..}] Motionless 0
scoreboard players set @a[scores={Stridered=1..}] Motionless 0
scoreboard players set @a[scores={HorsinAround=1..}] Motionless 0
scoreboard players set @a[scores={Damaged=1..}] Motionless 0
scoreboard players set @a Jumped 0
scoreboard players set @a Flew 0
scoreboard players set @a Damaged 0
scoreboard players set @a WalkedUnderwater 0
scoreboard players set @a Swimmed 0
scoreboard players set @a Boated 0
scoreboard players set @a Minecarted 0
scoreboard players set @a Pigged 0
scoreboard players set @a Stridered 0
scoreboard players set @a HorsinAround 0

#Steps Taken
scoreboard players operation @s StepsTaken += @s Walked
scoreboard players operation @s StepsTaken += @s Sprinted
scoreboard players operation @s StepsTaken += @s Sneaked
scoreboard players set @s Walked 0
scoreboard players set @s Sprinted 0
scoreboard players set @s Sneaked 0

#Containers Opened
scoreboard players operation @s ContainersOpened += @s ChestsOpened
scoreboard players operation @s ContainersOpened += @s TrappedChestsOpened
scoreboard players operation @s ContainersOpened += @s BarrelsOpened
scoreboard players operation @s ContainersOpened += @s ShulkersOpened
scoreboard players set @s ChestsOpened 0
scoreboard players set @s TrappedChestsOpened 0
scoreboard players set @s BarrelsOpened 0
scoreboard players set @s ShulkersOpened 0

#Stone/Deepslate
scoreboard players operation @s DeepslateStone += @s Stone
scoreboard players operation @s DeepslateStone += @s Deepslate
scoreboard players set @s Stone 0
scoreboard players set @s Deepslate 0

#Sand/Red Sand
scoreboard players operation @s SandMined += @s Sand
scoreboard players operation @s SandMined += @s RedSand
scoreboard players set @s Sand 0
scoreboard players set @s RedSand 0

#Pistons/Sticky Pistons
scoreboard players operation @s PistonsPlaced += @s Pistons
scoreboard players operation @s PistonsPlaced += @s StickyPistons
scoreboard players set @s Pistons 0
scoreboard players set @s StickyPistons 0

#Elytra Efficiency
scoreboard players operation @s ElytraEfficiency = @s ElytraDistance
scoreboard players operation @s ElytraEfficiency /= @s RocketsUsed

#Time Played
scoreboard players operation @s PlayTime = @s TimePlayed
scoreboard players operation @s PlayTime -= @s AFKTime

#Top XP
execute unless score @s TopXP matches 0.. run scoreboard players set @s TopXP 0
execute store result score @s XP run xp query @s levels
execute if score @s XP > @s TopXP run scoreboard players operation @s TopXP = @s XP

#Top Velocity
execute unless score @s TopVelocity matches 0.. run scoreboard players set @s TopVelocity 0
scoreboard players set @a -1 -1
execute if score @s Xmomentum matches ..-1 run scoreboard players operation @s Xmomentum *= @s -1
execute if score @s Xmomentum > @s TopVelocity run scoreboard players operation @s TopVelocity = @s Xmomentum

#Top Time Alive
execute unless score @s TopAliveTime matches 0.. run scoreboard players set @s TopAliveTime 0
execute if score @s TimeSinceDeath > @s TopAliveTime run scoreboard players operation @s TopAliveTime = @s TimeSinceDeath
