## function guilib:v0.2/load

#loop
schedule function guilib:v0.2/tick 1t replace

#blocks
execute as @e[type=#guilib:v0.2/supported_entity,tag=guilib,scores={guilib.version=-2}] at @s run function guilib:v0.2/block/tick
