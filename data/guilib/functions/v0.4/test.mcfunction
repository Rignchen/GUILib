
execute positioned -202 71 316 run kill @e[type=item_display,sort=nearest,distance=..3]
execute positioned -202 71 316 run summon item_display ~ ~ ~ {Tags:["guilib"],item:{id:"minecraft:acacia_boat",Count:1b,tag:{guilib:{Slots:[{Slot:13b,Items:[{id:"minecraft:grass"},{id:"minecraft:barrel"}]},{Slot:1b,Items:[{id:"minecraft:grass",anything:1b}]},{Slot:7b},{Slot:19b,Items:[]},{Slot:25b,Items:[{id:"minecraft:grass"}]},{Slot:2b,Items:[{id:"minecraft:barrel"}]},{Slot:12b,Items:[{id:"minecraft:barrel"},{id:"minecraft:grass"}]}]}}}}
execute positioned -202 71 316 as @e[type=item_display,limit=1,sort=nearest,distance=..1] run function #guilib:call/init
data modify block -202 71 316 Items set value []
