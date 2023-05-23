## function guilib:v0.2/block/guilib/exit/loop

#output item
summon item ~ ~1 ~ {Item:{id:"stone",Count:1b},Tags:["guilib.temp"]}
execute positioned ~ ~1 ~ as @e[type=item,limit=1,sort=nearest,tag=guilib.temp] run function guilib:v0.2/block/guilib/exit/exit

#remove from block
scoreboard players remove #exit0 guilib.temp 1
data remove storage guilib:temp guilib.Items[0]

say a