## function guilib:v0.5/block/guilib/loop/test_item/loop/test_item

item replace block ~ ~ ~ container.0 with air
data modify block ~ ~ ~ Items[{Slot:0b}] set from storage guilib:temp Items[0]

item modify block ~ ~ ~ container.0 guilib:v0.5/filtre/merge

execute store success score #test guilib.temp run data modify block ~ ~ ~ Items[{Slot:0b}] set from storage guilib:temp Items[0]

