scoreboard objectives add rand_trader_cnt dummy
scoreboard objectives add rand_trader_gen dummy
scoreboard objectives add modulo dummy

# Number of rand outputs ie. 5 ~> (0,1,2,3,4)
scoreboard players set head_trader_datapack modulo 5

scoreboard players set head_trader_datapack rand_trader_cnt 0
scoreboard players set head_trader_datapack rand_trader_gen 0

# Debug
scoreboard objectives setdisplay sidebar rand_trader_gen
