## function guilib:v0.6/block/guilib/sort/

execute store result score #temp guilib.temp run data get storage guilib:temp Slots[0].Items
function guilib:v0.6/block/guilib/sort/filtres

execute if score #test guilib.temp matches 0 run function guilib:v0.6/block/guilib/sort/pass
execute if score #test guilib.temp matches 1 run function guilib:v0.6/block/guilib/sort/not_pass
