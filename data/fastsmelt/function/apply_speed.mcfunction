# Clamp the requested time to 1..72000 ticks (1 tick .. 1 hour).
scoreboard players set #fastsmelt.input fastsmelt.speed 1
execute if score @s fastsmelt.speed matches 1.. run scoreboard players operation #fastsmelt.input fastsmelt.speed = @s fastsmelt.speed
execute if score #fastsmelt.input fastsmelt.speed > #fastsmelt.max fastsmelt.speed run scoreboard players operation #fastsmelt.input fastsmelt.speed = #fastsmelt.max fastsmelt.speed

# The speed provider reads this score.
scoreboard players operation #fastsmelt fastsmelt.speed = #fastsmelt.input fastsmelt.speed

# Reset the trigger so it is ready for the next change.
scoreboard players set @s fastsmelt.speed 0

tellraw @s [{"text":"[Fast Smelt] ","color":"gold"},{"text":"Smelting time set to ","color":"yellow"},{"score":{"name":"#fastsmelt.input","objective":"fastsmelt.speed"},"color":"aqua"},{"text":" tick(s).","color":"yellow"}]
