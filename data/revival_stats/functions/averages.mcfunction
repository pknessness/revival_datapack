scoreboard players set $TicksToMinutes Average 1200
scoreboard players set $TicksToSeconds Average 20
scoreboard players set $CentimetersToMeters Average 100

scoreboard players operation @s Average = @s PlayTime
scoreboard players operation @s Average /= @s Deaths
scoreboard players operation @s Average /= $TicksToMinutes Average
tellraw @s [{"text":"On average you've died every ","color":"dark_red"},{"score":{"name":"@s]","objective":"Average"}},{"text":" Minutes"}]

scoreboard players operation $PlaceHolder Average = @s PlayTime
scoreboard players operation $PlaceHolder Average /= $TicksToMinutes Average
scoreboard players operation @s Average = @s DamageTaken
scoreboard players operation @s Average /= $PlaceHolder Average
tellraw @s [{"text":"On average you take ","color":"red"},{"score":{"name":"@s]","objective":"Average"}},{"text":" damage per minute"}]

scoreboard players operation @s Average = @s PlayTime
scoreboard players operation @s Average /= @s Jumps
scoreboard players operation @s Average /= $TicksToSeconds Average
tellraw @s [{"text":"On average you jump every ","color":"blue"},{"score":{"name":"@s]","objective":"Average"}},{"text":" seconds"}]

scoreboard players operation $PlaceHolder Average = @s PlayTime
scoreboard players operation $PlaceHolder Average /= $TicksToMinutes Average
scoreboard players operation @s Average = @s ElytraDistance
scoreboard players operation @s Average /= $CentimetersToMeters Average
scoreboard players operation @s Average /= $PlaceHolder Average
tellraw @s [{"text":"On average you travel ","color":"dark_green"},{"score":{"name":"@s]","objective":"Average"}},{"text":" blocks by elytra per minute"}]

