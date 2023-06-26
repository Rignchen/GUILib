## function guilib:v0.5/init/sort

data modify storage guilib:temp sort set value []
execute if score @s guilib.slots matches 5.. run function guilib:v0.5/init/sort/5
execute if score @s guilib.slots matches 9.. run function guilib:v0.5/init/sort/9
execute if score @s guilib.slots matches 27.. run function guilib:v0.5/init/sort/27
