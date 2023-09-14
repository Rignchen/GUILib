## function guilib:v0.6/block/guilib/loop/test_item/loop/ctc/traits

item replace block ~ ~ ~ container.0 with air
item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits set from storage guilib:temp Items[0].tag.ctc.traits

item modify block ~ ~ ~ container.0 guilib:v0.6/filtre/ctc_traits

execute store success score #test guilib.temp run data modify block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits set from storage guilib:temp Items[0].tag.ctc.traits
