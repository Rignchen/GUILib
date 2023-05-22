## function guilib:v0.1/load

#loop
schedule function guilib:v0.1/tick 1t replace

#blocks
execute as @e[type=#guilib:v0.1/supported_entity,tag=guilib] run function guilib:v0.1/block/tick
