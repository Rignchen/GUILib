## function guilib:v0.1/block/tick

say ----start----

# get Items into her own storage
data modify storage guilib:temp Items set from storage guilib:temp guilib.Items
execute store result score #Items guilib.temp run data get storage guilib:temp Items
execute if score #Items guilib.temp matches 1.. run function guilib:v0.1/block/items

say -----end-----