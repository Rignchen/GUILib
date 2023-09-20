## function guilib:v0.6/block/guilib/has_instructions

data modify storage guilib:temp temp.Item set from storage guilib:temp guilib.Items[0]
data modify storage guilib:temp Items set from storage guilib:temp temp.Slots
execute store result score #temp guilib.slots run data get storage guilib:temp temp.Slots 
function guilib:v0.6/block/guilib/sort/loop
data modify storage guilib:temp Items set from storage guilib:temp guilib.Items
