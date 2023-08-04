## function guilib:v0.5/block/guilib/has_instructions

scoreboard players set #temp guilib.temp 0
execute store result score #temp guilib.slots run data get storage guilib:temp Items[0].Slot

function guilib:v0.5/block/guilib/loop/does_instruction_exist

data remove storage guilib:temp Items[0]
scoreboard players remove #total guilib.slots 1
execute if score #total guilib.slots matches 1.. run function guilib:v0.5/block/guilib/loop/
