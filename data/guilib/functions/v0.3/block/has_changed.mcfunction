## function guilib:v0.3/block/tick

# get the instructions into her own storage
data modify storage guilib:temp Slots set from storage guilib:temp guilib.Slots
execute store result score #Slots guilib.temp run data get storage guilib:temp Slots

# get Items into her own storage
data modify storage guilib:temp Items set from storage guilib:temp guilib.Items
execute store result score #Items guilib.temp run data get storage guilib:temp Items
data modify storage guilib:temp guilib.Items set value []
execute if score #Items guilib.temp matches 1.. run function guilib:v0.3/block/guilib/has_items

# put Items back in place
function guilib:v0.3/block/put_back_in_storage

# empty the storages
data remove storage guilib:temp Slots
data remove storage guilib:temp Items
data remove storage guilib:temp temp
