## function guilib:v0.3/block/guilib/loop

data remove storage guilib:temp Slots[0]
scoreboard players remove #Slots guilib.temp 1

execute if score #Slots guilib.temp matches 1.. run function guilib:v0.3/block/guilib/has_instructions
