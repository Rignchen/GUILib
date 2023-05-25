## function guilib:v0.3/block/guilib/slot_found

data modify storage guilib:temp temp.slot set from storage guilib:temp Slots[0]
data modify storage guilib:temp temp.item set from storage guilib:temp Items[0]
execute store result score #item_test guilib.temp run data get storage guilib:temp temp.slot.Items

function guilib:v0.3/block/guilib/test_item/loop
