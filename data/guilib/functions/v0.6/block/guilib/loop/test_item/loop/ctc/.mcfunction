## function guilib:v0.6/block/guilib/test_item/loop/test_item
## function guilib:v0.6/block/guilib/sort/test_item

execute if score #test guilib.temp matches 0 if data storage guilib:temp test.ctc.from run function guilib:v0.6/block/guilib/loop/test_item/loop/ctc/from
execute if score #test guilib.temp matches 0 if data storage guilib:temp test.ctc.id run function guilib:v0.6/block/guilib/loop/test_item/loop/ctc/id
execute if score #test guilib.temp matches 0 if data storage guilib:temp test.ctc.traits run function guilib:v0.6/block/guilib/loop/test_item/loop/ctc/traits
