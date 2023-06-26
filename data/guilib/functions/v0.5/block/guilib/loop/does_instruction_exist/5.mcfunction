## function guilib:v0.5/block/guilib/loop/does_instruction_exist/

execute if score #temp guilib.slots matches 5 if data storage guilib:temp guilib.Slots[{Slot:5b}] run function guilib:v0.5/block/guilib/loop/instruction_exist/5
execute if score #temp guilib.slots matches 4 if data storage guilib:temp guilib.Slots[{Slot:4b}] run function guilib:v0.5/block/guilib/loop/instruction_exist/4
execute if score #temp guilib.slots matches 3 if data storage guilib:temp guilib.Slots[{Slot:3b}] run function guilib:v0.5/block/guilib/loop/instruction_exist/3
execute if score #temp guilib.slots matches 2 if data storage guilib:temp guilib.Slots[{Slot:2b}] run function guilib:v0.5/block/guilib/loop/instruction_exist/2
execute if score #temp guilib.slots matches 1 if data storage guilib:temp guilib.Slots[{Slot:1b}] run function guilib:v0.5/block/guilib/loop/instruction_exist/1
execute if score #temp guilib.slots matches 0 if data storage guilib:temp guilib.Slots[{Slot:0b}] run function guilib:v0.5/block/guilib/loop/instruction_exist/0
