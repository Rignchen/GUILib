## function guilib:v0.1/block/has_changed

#get slot number
execute store result score #temp guilib.temp run data get storage guilib:temp Items[0].Slot
tellraw @a[tag=convention.debug] {"score":{"name": "#temp","objective": "guilib.temp"}}

#loop
scoreboard players remove #Items guilib.temp 1
data remove storage guilib:temp Items[0]
execute if score #Items guilib.temp matches 1.. run function guilib:v0.1/block/items
