# Debug
#effect give @s minecraft:glowing 1 1 true

# Set random pointer (0,1,2,3,4)
execute store result score head_trader_datapack rand_trader_cnt run time query gametime
execute store result score head_trader_datapack rand_trader_gen run scoreboard players operation head_trader_datapack rand_trader_cnt %= head_trader_datapack modulo

# Set villager career
execute if score head_trader_datapack rand_trader_gen matches 0 run function main:villagers/gardener
execute if score head_trader_datapack rand_trader_gen matches 1 run function main:villagers/chef
execute if score head_trader_datapack rand_trader_gen matches 2 run function main:villagers/craftsman
execute if score head_trader_datapack rand_trader_gen matches 3 run function main:villagers/lumberjack
execute if score head_trader_datapack rand_trader_gen matches 4 run function main:villagers/huntsman

# Only execute once per villager
tag @s add trader
