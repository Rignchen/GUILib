## function guilib:v0.3/load

#loop
schedule function guilib:v0.3/tick 1t replace

#blocks
execute as @e[type=#guilib:v0.3/supported_entity,tag=guilib] at @s run function guilib:v0.3/block/tick
