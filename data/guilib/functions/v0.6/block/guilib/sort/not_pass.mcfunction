## function guilib:v0.6/block/guilib/sort/loop

scoreboard players remove #temp guilib.slots 1
data remove storage guilib:temp Items[0]
execute if score #temp guilib.slots matches 1.. run function guilib:v0.6/block/guilib/sort/loop
