## function guilib:v0.6/block/guilib/sort/

data modify storage guilib:temp test.id set from storage guilib:temp temp.Item
scoreboard players set #test guilib.temp 0

function guilib:v0.6/block/guilib/sort/test_item

execute if score #test guilib.temp matches 0 run function guilib:v0.6/block/guilib/sort/pass
execute if score #test guilib.temp matches 1 run function guilib:v0.6/block/guilib/sort/not_pass
