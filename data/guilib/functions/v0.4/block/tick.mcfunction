## function guilib:v0.4/tick

#get data from block into storages
function guilib:v0.4/block/get_storage

#test if Items has changed
execute store success score #temp guilib.temp run data modify storage guilib:temp guilib.Items set from block ~ ~ ~ Items
execute if score #temp guilib.temp matches 1 run function guilib:v0.4/block/has_changed

#actualise the block
data modify block ~ ~ ~ Items set from storage guilib:temp guilib.Items
