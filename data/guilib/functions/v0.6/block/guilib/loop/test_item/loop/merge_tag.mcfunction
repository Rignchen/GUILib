## function guilib:v0.6/block/guilib/loop/test_item/loop/tag

item replace block ~ ~ ~ container.0 with air
item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[{Slot:0b}].tag set from storage guilib:temp Items[0].tag

item modify block ~ ~ ~ container.0 guilib:v0.6/filtre/tag

execute store success score #test guilib.temp run data modify block ~ ~ ~ Items[{Slot:0b}].tag set from storage guilib:temp Items[0].tag
