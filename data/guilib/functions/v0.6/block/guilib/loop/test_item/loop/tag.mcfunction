## function guilib:v0.6/block/guilib/loop/test_item/loop/test_item
## function guilib:v0.6/block/guilib/sort/test_item

execute store result score #test guilib.temp unless data storage guilib:temp Items[0].tag
execute if score #test guilib.temp matches 0 run function guilib:v0.6/block/guilib/loop/test_item/loop/merge_tag
