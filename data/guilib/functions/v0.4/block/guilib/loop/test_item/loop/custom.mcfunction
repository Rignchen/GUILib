## function guilib:v0.4/block/guilib/test_item/loop/test_item

execute store result score #custom guilib.temp run data get storage guilib:temp Items[0].custom
function #guilib:event/custom_test
execute unless score #test guilib.temp matches 0 run scoreboard players set #test guilib.temp 1
