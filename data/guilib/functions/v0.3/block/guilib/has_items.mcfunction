## function guilib:v0.3/block/has_changed

#find the slot
execute if score #Slots guilib.temp matches 1.. run function guilib:v0.3/block/guilib/has_instructions
execute if score #Slots guilib.temp matches 0 run function guilib:v0.3/block/guilib/has_no_instructions

#loop
execute if score #Items guilib.temp matches 1.. run function guilib:v0.3/block/guilib/has_items
