execute if score $CycleTimer CycleTimer matches 1 run scoreboard objectives setdisplay sidebar Deaths
execute if score $CycleTimer CycleTimer matches 2 run scoreboard objectives setdisplay sidebar DeathsToPlayer
execute if score $CycleTimer CycleTimer matches 3 run scoreboard objectives setdisplay sidebar MobKills
execute if score $CycleTimer CycleTimer matches 4 run scoreboard objectives setdisplay sidebar DamageTaken
execute if score $CycleTimer CycleTimer matches 5 run scoreboard objectives setdisplay sidebar StepsTaken
execute if score $CycleTimer CycleTimer matches 6 run scoreboard objectives setdisplay sidebar ObsidianMined
execute if score $CycleTimer CycleTimer matches 7 run scoreboard objectives setdisplay sidebar DeepslateStone
execute if score $CycleTimer CycleTimer matches 8 run scoreboard objectives setdisplay sidebar SandMined
execute if score $CycleTimer CycleTimer matches 9 run scoreboard objectives setdisplay sidebar TorchesCrafted
execute if score $CycleTimer CycleTimer matches 10 run scoreboard objectives setdisplay sidebar Jumps
execute if score $CycleTimer CycleTimer matches 11 run scoreboard objectives setdisplay sidebar ElytraDistance
execute if score $CycleTimer CycleTimer matches 12 run scoreboard objectives setdisplay sidebar ElytraEfficiency
execute if score $CycleTimer CycleTimer matches 13 run scoreboard objectives setdisplay sidebar PlayTime
execute if score $CycleTimer CycleTimer matches 14 run scoreboard objectives setdisplay sidebar AFKTime
execute if score $CycleTimer CycleTimer matches 15 run scoreboard objectives setdisplay sidebar Fish
execute if score $CycleTimer CycleTimer matches 16 run scoreboard objectives setdisplay sidebar LeftGame
execute if score $CycleTimer CycleTimer matches 17 run scoreboard objectives setdisplay sidebar VillagerTrades
execute if score $CycleTimer CycleTimer matches 18 run scoreboard objectives setdisplay sidebar PistonsPlaced
execute if score $CycleTimer CycleTimer matches 19 run scoreboard objectives setdisplay sidebar TopXP
execute if score $CycleTimer CycleTimer matches 20 run scoreboard objectives setdisplay sidebar TopVelocity
execute if score $CycleTimer CycleTimer matches 21 run scoreboard objectives setdisplay sidebar TopAliveTime
execute if score $CycleTimer CycleTimer matches 22 run scoreboard objectives setdisplay sidebar ShulkersKilled
execute if score $CycleTimer CycleTimer matches 23 run scoreboard objectives setdisplay sidebar EGapplesEaten
execute if score $CycleTimer CycleTimer matches 24 run scoreboard objectives setdisplay sidebar AnimalsBred
execute if score $CycleTimer CycleTimer matches 25 run scoreboard objectives setdisplay sidebar ContainersOpened
execute if score $CycleTimer CycleTimer matches 25.. run scoreboard players set $CycleTimer CycleTimer 0
scoreboard players add $CycleTimer CycleTimer 1
scoreboard players set $SubTimer CycleTimer 0



execute as @a run function revival:update_stats
