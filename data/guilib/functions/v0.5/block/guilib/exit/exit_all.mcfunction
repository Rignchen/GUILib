## function guilib:v0.5/block/guilib/has_items

scoreboard players remove #Items guilib.temp 1
function guilib:v0.5/block/guilib/exit/
data remove storage guilib:temp Items[0]
execute if score #Items guilib.temp matches 1.. run function guilib:v0.5/block/guilib/exit/exit_all
