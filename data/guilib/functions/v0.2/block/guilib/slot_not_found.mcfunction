## function guilib:v0.2/block/guilib/loop

data modify storage test a set from storage guilib:temp guilib.Slots
data modify storage guilib:temp Slots append from storage guilib:temp Slots[0]
data remove storage guilib:temp Slots[0]

execute if score #Slots guilib.temp matches 1.. run scoreboard players remove #Slots guilib.temp 1
execute if score #Slots guilib.temp matches 0 run function guilib:v0.2/block/guilib/exit/
execute if score #Slots guilib.temp matches 1.. run function guilib:v0.2/block/guilib/loop
