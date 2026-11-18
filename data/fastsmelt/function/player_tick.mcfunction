# Make sure every player can use the trigger (also covers players who join later).
scoreboard players add @s fastsmelt.speed 0
scoreboard players enable @s fastsmelt.speed

# 0 means "no new input"; anything else was set with /trigger.
execute unless score @s fastsmelt.speed matches 0 run function fastsmelt:apply_speed
