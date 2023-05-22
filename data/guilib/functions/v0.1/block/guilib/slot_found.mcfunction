## function guilib:v0.1/block/guilib/loop

tellraw @a[tag=convention.debug] [{"text":"found"},{"score":{"name": "#temp1","objective": "guilib.temp"}}]

data remove storage guilib:temp Slots[0]
scoreboard players operation #temp1 guilib.temp = #temp guilib.temp
