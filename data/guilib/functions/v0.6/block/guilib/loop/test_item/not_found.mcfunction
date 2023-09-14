## function guilib:v0.6/block/guilib/test_item/loop

data remove storage guilib:temp Slot.Items[0]
scoreboard players remove #item_test guilib.temp 1

execute if score #item_test guilib.temp matches 0 run function guilib:v0.6/block/guilib/exit/
execute if score #item_test guilib.temp matches 1.. run function guilib:v0.6/block/guilib/loop/test_item/loop
