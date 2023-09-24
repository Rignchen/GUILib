say v0.6/block/guilib/sort/filtres
## function guilib:v0.6/block/guilib/sort/loop
## function guilib:v0.6/block/guilib/sort/next_filtres

data modify storage guilib:temp test set from storage guilib:temp guilib.Items[0]
data modify storage guilib:temp Items set from storage guilib:temp Slots[0].Items
tellraw @a[tag=convention.debug] ["Slots[0].Items: ",{"nbt":"Items","storage": "guilib:temp"}]
tellraw @a[tag=convention.debug] ["test: ",{"nbt":"test","storage": "guilib:temp"}]
scoreboard players set #test guilib.temp 0
execute unless data storage guilib:temp Items[0].anything run function guilib:v0.6/block/guilib/sort/test_item
execute if score #test guilib.temp matches 1 if score #temp guilib.temp matches 1.. run function guilib:v0.6/block/guilib/sort/next_filtres
