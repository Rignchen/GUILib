
#get slot number
execute store result score #temp guilib.temp run data get storage guilib:temp Slots[0].Slot
execute store result score #temp1 guilib.temp run data get storage guilib:temp Items[0].Slot

execute if score #temp guilib.temp < #temp1 guilib.temp run function guilib:v0.3/block/guilib/found/slot_not_found
execute if score #temp guilib.temp > #temp1 guilib.temp run function guilib:v0.3/block/guilib/found/item_not_found
execute if score #temp guilib.temp = #temp1 guilib.temp run function guilib:v0.3/block/guilib/found/found
