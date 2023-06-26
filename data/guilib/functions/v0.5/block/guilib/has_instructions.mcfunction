## function guilib:v0.5/block/guilib/has_items

#get storages
data modify storage guilib:temp Items set from storage guilib:temp guilib.Items
data modify storage guilib:temp Slots set from storage guilib:temp guilib.Slots
data modify storage guilib:temp guilib.Items set value []

execute store result score #total guilib.slots run data get storage guilib:temp Items
function guilib:v0.5/block/guilib/loop/

# put Items back in place
function guilib:v0.5/block/put_back_in_storage

#actualise the block
data modify block ~ ~ ~ Items set from storage guilib:temp guilib.Items

# empty the storages
data remove storage guilib:temp Slots
data remove storage guilib:temp Items
data remove storage guilib:temp test
