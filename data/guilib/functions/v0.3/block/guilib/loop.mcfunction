## function guilib:v0.3/block/guilib/

execute store result score #temp1 guilib.temp run data get storage guilib:temp Slots[0].Slot

#temp1 = slot set by the user
#temp = item in the block

execute if score #temp1 guilib.temp = #temp guilib.temp run function guilib:v0.3/block/guilib/slot_found
execute unless score #temp1 guilib.temp = #temp guilib.temp run function guilib:v0.3/block/guilib/slot_not_found
