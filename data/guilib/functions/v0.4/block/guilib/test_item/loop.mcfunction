## function guilib:v0.4/block/guilib/test_item/

scoreboard players set #test guilib.temp 0
data modify storage guilib:temp temp.test set from storage guilib:temp temp.slot.Items[0]
execute if score #item_test guilib.temp matches 1.. unless data storage guilib:temp temp.slot.Items[{anything:1b}] run function guilib:v0.4/block/guilib/test_item/loop/test_item

scoreboard players remove #item_test guilib.temp 1

execute if score #test guilib.temp matches 0 run function guilib:v0.4/block/guilib/test_item/found
execute if score #test guilib.temp matches 1 run function guilib:v0.4/block/guilib/test_item/not_found
