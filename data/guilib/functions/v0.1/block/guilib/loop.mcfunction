## function guilib:v0.1/block/guilib/

execute store result score #temp1 guilib.temp run data get storage guilib:temp Slots[0].Slot

tellraw @a[tag=convention.debug] [{"score":{"name": "#temp","objective": "guilib.temp"}},{"text": "/"},{"score":{"name": "#temp1","objective": "guilib.temp"}}]

execute if score #temp1 guilib.temp = #temp guilib.temp run function guilib:v0.1/block/guilib/slot_found
execute unless score #temp1 guilib.temp = #temp guilib.temp run function guilib:v0.1/block/guilib/slot_not_found