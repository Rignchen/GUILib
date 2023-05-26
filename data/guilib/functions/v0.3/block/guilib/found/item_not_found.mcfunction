## function guilib:v0.3/block/guilib/loop

function guilib:v0.3/block/guilib/exit

data remove storage guilib:temp Items[0]
scoreboard players remove #Items guilib.temp 1

execute if score #Items guilib.temp matches 1.. run function guilib:v0.3/block/guilib/has_instructions
