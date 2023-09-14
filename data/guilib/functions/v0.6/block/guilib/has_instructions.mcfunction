## function guilib:v0.6/block/guilib/has_items

#get storages
data modify storage guilib:temp Slots set from storage guilib:temp guilib.Slots
data modify storage guilib:temp guilib.Items set value []

execute store result score #total guilib.slots run data get storage guilib:temp Items
function guilib:v0.6/block/guilib/loop/

# put Items back in place
function guilib:v0.6/block/put_back_in_storage
