## function guilib:v0.1/block/guilib/slot_not_found

tellraw @a[tag=convention.debug] [{"text":"not found"},{"score":{"name": "#temp","objective": "guilib.temp"}}]
execute store result score #exit0 guilib.temp run data get storage guilib:temp guilib.Items
function guilib:v0.1/block/guilib/exit/loop
