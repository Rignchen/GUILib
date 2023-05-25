## function guilib:v0.2/block/guilib/exit/

execute store result score #exit1 guilib.temp run data get storage guilib:temp guilib.Items[0].Slot
execute if score #temp guilib.temp = #exit1 guilib.temp run function guilib:v0.2/block/guilib/exit/found

scoreboard players remove #exit0 guilib.temp 1
data modify storage guilib:temp guilib.Items append from storage guilib:temp guilib.Items[0]
data remove storage guilib:temp guilib.Items[0]

execute if score #exit0 guilib.temp matches 1.. run function guilib:v0.2/block/guilib/exit/loop
