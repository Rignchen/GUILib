## function guilib:v0.4/block/guilib/loop/test_item/

scoreboard players set #test guilib.temp 0
data modify storage guilib:temp test set from storage guilib:temp Slot.Items[0]
execute if score #item_test guilib.temp matches 1.. unless data storage guilib:temp Slot.Items[{anything:1b}] run function guilib:v0.4/block/guilib/loop/test_item/loop/test_item

execute if score #test guilib.temp matches 0 run function guilib:v0.4/block/guilib/loop/test_item/found
execute if score #test guilib.temp matches 1 run function guilib:v0.4/block/guilib/loop/test_item/not_found
