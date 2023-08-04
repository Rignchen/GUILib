## function guilib:v0.5/block/has_changed

execute store result score #temp guilib.temp if data storage guilib:temp guilib.Slots[0]

#find the slot
execute if score #temp guilib.temp matches 0 run function guilib:v0.5/block/guilib/exit/all
execute if score #temp guilib.temp matches 1 run function guilib:v0.5/block/guilib/has_instructions
