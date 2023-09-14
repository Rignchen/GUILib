## function guilib:v0.6/block/guilib/has_items

execute store result score #Items guilib.temp run data get storage guilib:temp Items
function guilib:v0.6/block/guilib/exit/exit_all
data modify storage guilib:temp guilib.Items set value []
