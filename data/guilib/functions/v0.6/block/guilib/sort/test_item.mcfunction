## function guilib:v0.6/block/guilib/sort/filtres

execute if score #test guilib.temp matches 0 if data storage guilib:temp Items[0].id run function guilib:v0.6/block/guilib/loop/test_item/loop/id
execute if score #test guilib.temp matches 0 if data storage guilib:temp Items[0].ctc run function guilib:v0.6/block/guilib/loop/test_item/loop/ctc/
execute if score #test guilib.temp matches 0 if data storage guilib:temp Items[0].tag run function guilib:v0.6/block/guilib/loop/test_item/loop/tag
execute if score #test guilib.temp matches 0 if data storage guilib:temp Items[0].custom run function guilib:v0.6/block/guilib/loop/test_item/loop/custom

tellraw @a[tag=convention.debug] ["#test ",{"score":{"name":"#test","objective":"guilib.temp"}}]
