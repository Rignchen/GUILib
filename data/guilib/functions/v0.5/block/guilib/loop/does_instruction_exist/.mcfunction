## function guilib:v0.5/block/guilib/loop/

#put the instruction needed in a storage
execute if score @s guilib.slots matches 27 run function guilib:v0.5/block/guilib/loop/does_instruction_exist/27
execute if score @s guilib.slots matches 9.. run function guilib:v0.5/block/guilib/loop/does_instruction_exist/9
execute if score @s guilib.slots matches 5.. run function guilib:v0.5/block/guilib/loop/does_instruction_exist/5

#test if it's an autorised item
execute if score #temp guilib.temp matches 0 run function guilib:v0.5/block/guilib/exit/
execute if score #temp guilib.temp matches 1 run function guilib:v0.5/block/guilib/loop/test_item/
