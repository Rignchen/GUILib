## function guilib:v0.2/block/guilib/test_item/loop


execute if score #test guilib.temp matches 0 if data storage guilib:temp temp.slot.Items[0].id run function guilib:v0.2/block/guilib/test_item/loop/id
tellraw @a[tag=convention.debug] [{"text": "should go? "},{"score":{"name": "#test","objective": "guilib.temp"}}]
execute if score #test guilib.temp matches 0 if data storage guilib:temp temp.slot.Items[0].ctc run function guilib:v0.2/block/guilib/test_item/loop/ctc
tellraw @a[tag=convention.debug] [{"text": "should go? "},{"score":{"name": "#test","objective": "guilib.temp"}}]
execute if score #test guilib.temp matches 1 if data storage guilib:temp temp.slot.Items[{anything:1b}] run scoreboard players set #test guilib.temp 0
tellraw @a[tag=convention.debug] [{"text": "should go? "},{"score":{"name": "#test","objective": "guilib.temp"}}]
