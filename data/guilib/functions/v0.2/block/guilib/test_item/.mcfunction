## function guilib:v0.2/block/guilib/slot_found

data modify storage guilib:temp temp.slot set from storage guilib:temp Slots[0]
data modify storage guilib:temp temp.item set from storage guilib:temp Item[0]
execute store result score #item_test guilib.temp run data get storage guilib:temp temp.Items

function guilib:v0.2/block/guilib/test_item/loop