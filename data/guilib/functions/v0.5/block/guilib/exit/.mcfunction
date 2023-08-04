## function guilib:v0.5/block/guilib/loop/test_item/not_found
## function guilib:v0.5/block/guilib/loop/does_instruction_exist
## function guilib:v0.5/block/guilib/exit/exit_all

#output item
summon item ~ ~1 ~ {Item:{id:"stone",Count:1b,tag:{guilib:1b}},Tags:["guilib.temp"]}
execute positioned ~ ~1 ~ as @e[type=item,limit=1,sort=nearest,tag=guilib.temp] run function guilib:v0.5/block/guilib/exit/exit_item
