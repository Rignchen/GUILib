## function guilib:v0.2/block/guilib/test_item/

scoreboard players remove #item_test guilib.temp 1

scoreboard players set #test guilib.temp 0
execute if data storage guilib:temp temp.slot.Items run function guilib:v0.2/block/guilib/test_item/loop/test_item

execute if score #test guilib.temp matches 0 run function guilib:v0.2/block/guilib/test_item/pass
execute if score #test guilib.temp matches 1 run function guilib:v0.2/block/guilib/test_item/not_found
