## function guilib:v0.5/block/has_changed

execute store result score #temp guilib.temp if data storage guilib:temp guilib.Slots[0]
data modify storage guilib:temp Items set from storage guilib:temp guilib.Items

#find the slot
execute if score #temp guilib.temp matches 0 run function guilib:v0.5/block/guilib/exit/all
execute if score #temp guilib.temp matches 1 run function guilib:v0.5/block/guilib/has_instructions

#actualise the block
data modify block ~ ~ ~ Items set from storage guilib:temp guilib.Items

# empty the storages
data remove storage guilib:temp Slots
data remove storage guilib:temp Items
data remove storage guilib:temp test
