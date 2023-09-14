## function guilib:v0.6/tick

#get data from block into storages
function guilib:v0.6/block/get_storage

#test if Items has changed
execute store success score #temp guilib.temp run data modify storage guilib:temp guilib.Items set from block ~ ~ ~ Items
execute if score #temp guilib.temp matches 1 run function guilib:v0.6/block/has_changed
