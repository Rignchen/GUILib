## function guilib:v0.3/block/guilib/found/item_not_found

#output item
summon item ~ ~1 ~ {Item:{id:"stone",Count:1b},Tags:["guilib.temp"]}
execute positioned ~ ~1 ~ as @e[type=item,limit=1,sort=nearest,tag=guilib.temp] run function guilib:v0.3/block/guilib/exit_item
