## function guilib:v0.1/block/guilib/test_item/loop

execute if score #test guilib.temp matches 0 if data storage guilib:temp temp.slot.Items.id run function guilib:v0.1/block/guilib/test_item/loop/id
execute if score #test guilib.temp matches 0 if data storage guilib:temp temp.slot.Items.ctc run function guilib:v0.1/block/guilib/test_item/loop/ctc
execute if score #test guilib.temp matches 1 if data storage guilib:temp {temp:{slot:{Items:{anything:1b}}}} run scoreboard players set #test guilib.temp 0
