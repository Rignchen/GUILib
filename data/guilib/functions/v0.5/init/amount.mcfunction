## function guilib:v0.5/init/good_version

scoreboard players set @s guilib.slots 0
execute if block ~ ~ ~ #guilib:slots/27 run scoreboard players set @s guilib.slots 27
execute if score @s guilib.slots matches 0 if block ~ ~ ~ #guilib:slots/9 run scoreboard players set @s guilib.slots 9
execute if score @s guilib.slots matches 0 if block ~ ~ ~ #guilib:slots/5 run scoreboard players set @s guilib.slots 5
