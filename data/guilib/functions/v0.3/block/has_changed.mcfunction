## function guilib:v0.3/block/tick

# get the instructions into her own storage
data modify storage guilib:temp Slots set from storage guilib:temp guilib.Slots

# get Items into her own storage
data modify storage guilib:temp Items set from storage guilib:temp guilib.Items
execute store result score #Items guilib.temp run data get storage guilib:temp Items
execute if score #Items guilib.temp matches 1.. run function guilib:v0.3/block/items

#put Items back in place
function guilib:v0.3/block/put_back_in_storage
