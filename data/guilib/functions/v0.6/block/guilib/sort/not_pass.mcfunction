say v0.6/block/guilib/sort/not_pass
## function guilib:v0.6/block/guilib/sort/loop

scoreboard players remove #temp guilib.slots 1
data remove storage guilib:temp Slots[0]
execute if score #temp guilib.slots matches 0 run function guilib:v0.6/block/guilib/exit/
execute if score #temp guilib.slots matches 1.. run function guilib:v0.6/block/guilib/sort/loop
