## function guilib:v0.3/block/guilib/test_item/loop

execute if score #test guilib.temp matches 0 if data storage guilib:temp temp.test.id run function guilib:v0.3/block/guilib/test_item/loop/id
execute if score #test guilib.temp matches 0 if data storage guilib:temp temp.test.ctc run function guilib:v0.3/block/guilib/test_item/loop/ctc
execute if score #test guilib.temp matches 0 if data storage guilib:temp temp.test.custom run function guilib:v0.3/block/guilib/test_item/loop/custom
