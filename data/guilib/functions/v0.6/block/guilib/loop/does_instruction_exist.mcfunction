## function guilib:v0.6/block/guilib/loop/

#put the instruction needed in a storage
execute if score #temp guilib.slots matches 26 if data storage guilib:temp guilib.Slots[{Slot:26b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/26
execute if score #temp guilib.slots matches 25 if data storage guilib:temp guilib.Slots[{Slot:25b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/25
execute if score #temp guilib.slots matches 24 if data storage guilib:temp guilib.Slots[{Slot:24b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/24
execute if score #temp guilib.slots matches 23 if data storage guilib:temp guilib.Slots[{Slot:23b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/23
execute if score #temp guilib.slots matches 22 if data storage guilib:temp guilib.Slots[{Slot:22b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/22
execute if score #temp guilib.slots matches 21 if data storage guilib:temp guilib.Slots[{Slot:21b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/21
execute if score #temp guilib.slots matches 20 if data storage guilib:temp guilib.Slots[{Slot:20b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/20
execute if score #temp guilib.slots matches 19 if data storage guilib:temp guilib.Slots[{Slot:19b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/19
execute if score #temp guilib.slots matches 18 if data storage guilib:temp guilib.Slots[{Slot:18b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/18
execute if score #temp guilib.slots matches 17 if data storage guilib:temp guilib.Slots[{Slot:17b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/17
execute if score #temp guilib.slots matches 16 if data storage guilib:temp guilib.Slots[{Slot:16b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/16
execute if score #temp guilib.slots matches 15 if data storage guilib:temp guilib.Slots[{Slot:15b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/15
execute if score #temp guilib.slots matches 14 if data storage guilib:temp guilib.Slots[{Slot:14b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/14
execute if score #temp guilib.slots matches 13 if data storage guilib:temp guilib.Slots[{Slot:13b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/13
execute if score #temp guilib.slots matches 12 if data storage guilib:temp guilib.Slots[{Slot:12b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/12
execute if score #temp guilib.slots matches 11 if data storage guilib:temp guilib.Slots[{Slot:11b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/11
execute if score #temp guilib.slots matches 10 if data storage guilib:temp guilib.Slots[{Slot:10b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/10
execute if score #temp guilib.slots matches 9 if data storage guilib:temp guilib.Slots[{Slot:9b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/9
execute if score #temp guilib.slots matches 8 if data storage guilib:temp guilib.Slots[{Slot:8b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/8
execute if score #temp guilib.slots matches 7 if data storage guilib:temp guilib.Slots[{Slot:7b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/7
execute if score #temp guilib.slots matches 6 if data storage guilib:temp guilib.Slots[{Slot:6b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/6
execute if score #temp guilib.slots matches 5 if data storage guilib:temp guilib.Slots[{Slot:5b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/5
execute if score #temp guilib.slots matches 4 if data storage guilib:temp guilib.Slots[{Slot:4b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/4
execute if score #temp guilib.slots matches 3 if data storage guilib:temp guilib.Slots[{Slot:3b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/3
execute if score #temp guilib.slots matches 2 if data storage guilib:temp guilib.Slots[{Slot:2b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/2
execute if score #temp guilib.slots matches 1 if data storage guilib:temp guilib.Slots[{Slot:1b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/1
execute if score #temp guilib.slots matches 0 if data storage guilib:temp guilib.Slots[{Slot:0b}] run function guilib:v0.6/block/guilib/loop/instruction_exist/0

#test if it's an autorised item
execute if score #temp guilib.temp matches 0 run function guilib:v0.6/block/guilib/exit/
execute if score #temp guilib.temp matches 1 run function guilib:v0.6/block/guilib/loop/test_item/
