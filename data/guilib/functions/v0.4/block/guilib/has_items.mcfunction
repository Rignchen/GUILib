## function guilib:v0.4/block/has_changed

#find the slot
execute if score #Slots guilib.temp matches 1.. run function guilib:v0.4/block/guilib/has_instructions

execute if score #Slots guilib.temp matches 0 if score #Items guilib.temp matches 1.. run function guilib:v0.4/block/guilib/exit_all
execute if score #Items guilib.temp matches 1.. run function guilib:v0.4/block/guilib/has_items
