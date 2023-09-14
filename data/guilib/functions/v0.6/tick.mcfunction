## function guilib:v0.6/load

#loop
schedule function guilib:v0.6/tick 1t replace

#blocks
execute as @e[type=#guilib:v0.6/supported_entity,tag=guilib] at @s run function guilib:v0.6/block/tick
