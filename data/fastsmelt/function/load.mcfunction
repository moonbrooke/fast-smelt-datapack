# Scoreboard used by the /trigger command.
scoreboard objectives add fastsmelt.speed trigger

# Default to 1 tick per item, but keep an existing setting across reloads.
execute unless score #fastsmelt fastsmelt.speed matches 1.. run scoreboard players set #fastsmelt fastsmelt.speed 1
execute if score #fastsmelt fastsmelt.speed matches 72001.. run scoreboard players set #fastsmelt fastsmelt.speed 72000
scoreboard players set #fastsmelt.max fastsmelt.speed 72000

# Let players who are already online use the trigger right away.
scoreboard players enable @a fastsmelt.speed
