## function guilib:v0.4/block/guilib/test_item/loop

data remove storage guilib:temp temp.slot.Items[0]
execute if score #item_test guilib.temp matches 0 run function guilib:v0.4/block/guilib/exit
execute if score #item_test guilib.temp matches 1.. run function guilib:v0.4/block/guilib/test_item/loop