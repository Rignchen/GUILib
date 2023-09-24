## function guilib:v0.6/block/guilib/sort/pass

tellraw @a[tag=convention.debug] ["#temp ",{"score":{"name":"#temp","objective":"guilib.slots"}}]

execute if score #temp guilib.slots matches 1 unless data storage guilib:temp guilib.Items[{Slot:1b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 1b
execute if score #temp guilib.slots matches 2 unless data storage guilib:temp guilib.Items[{Slot:2b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 2b
execute if score #temp guilib.slots matches 3 unless data storage guilib:temp guilib.Items[{Slot:3b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 3b
execute if score #temp guilib.slots matches 4 unless data storage guilib:temp guilib.Items[{Slot:4b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 4b
execute if score #temp guilib.slots matches 5 unless data storage guilib:temp guilib.Items[{Slot:5b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 5b
execute if score #temp guilib.slots matches 6 unless data storage guilib:temp guilib.Items[{Slot:6b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 6b
execute if score #temp guilib.slots matches 7 unless data storage guilib:temp guilib.Items[{Slot:7b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 7b
execute if score #temp guilib.slots matches 8 unless data storage guilib:temp guilib.Items[{Slot:8b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 8b
execute if score #temp guilib.slots matches 9 unless data storage guilib:temp guilib.Items[{Slot:9b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 9b
execute if score #temp guilib.slots matches 10 unless data storage guilib:temp guilib.Items[{Slot:10b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 10b
execute if score #temp guilib.slots matches 11 unless data storage guilib:temp guilib.Items[{Slot:11b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 11b
execute if score #temp guilib.slots matches 12 unless data storage guilib:temp guilib.Items[{Slot:12b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 12b
execute if score #temp guilib.slots matches 13 unless data storage guilib:temp guilib.Items[{Slot:13b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 13b
execute if score #temp guilib.slots matches 14 unless data storage guilib:temp guilib.Items[{Slot:14b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 14b
execute if score #temp guilib.slots matches 15 unless data storage guilib:temp guilib.Items[{Slot:15b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 15b
execute if score #temp guilib.slots matches 16 unless data storage guilib:temp guilib.Items[{Slot:16b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 16b
execute if score #temp guilib.slots matches 17 unless data storage guilib:temp guilib.Items[{Slot:17b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 17b
execute if score #temp guilib.slots matches 18 unless data storage guilib:temp guilib.Items[{Slot:18b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 18b
execute if score #temp guilib.slots matches 19 unless data storage guilib:temp guilib.Items[{Slot:19b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 19b
execute if score #temp guilib.slots matches 20 unless data storage guilib:temp guilib.Items[{Slot:20b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 20b
execute if score #temp guilib.slots matches 21 unless data storage guilib:temp guilib.Items[{Slot:21b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 21b
execute if score #temp guilib.slots matches 22 unless data storage guilib:temp guilib.Items[{Slot:22b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 22b
execute if score #temp guilib.slots matches 23 unless data storage guilib:temp guilib.Items[{Slot:23b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 23b
execute if score #temp guilib.slots matches 24 unless data storage guilib:temp guilib.Items[{Slot:24b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 24b
execute if score #temp guilib.slots matches 25 unless data storage guilib:temp guilib.Items[{Slot:25b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 25b
execute if score #temp guilib.slots matches 26 unless data storage guilib:temp guilib.Items[{Slot:26b}] run data modify storage guilib:temp guilib.Items[0].Slot set value 26b

execute if data storage guilib:temp guilib.Items[{Slot:0b}] run function guilib:v0.6/block/guilib/sort/exit
