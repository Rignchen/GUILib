say v0.6/block/guilib/sort/pass
## function guilib:v0.6/block/guilib/sort/loop

scoreboard players set #temp guilib.slots 0
execute store result score #temp guilib.slots run data get storage guilib:temp Slots[0].Slot

tellraw @a[tag=convention.debug] ["Slots[0]: ",{"nbt":"Slots[0]","storage": "guilib:temp"}]

function guilib:v0.6/block/guilib/sort/sort
