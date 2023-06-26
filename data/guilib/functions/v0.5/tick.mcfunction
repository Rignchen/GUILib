## function guilib:v0.5/load

#loop
schedule function guilib:v0.5/tick 1t replace

#blocks
execute as @e[type=#guilib:v0.5/supported_entity,tag=guilib] at @s run function guilib:v0.5/block/tick
