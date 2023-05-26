## function guilib:v0.4/block/guilib/test_item/loop/test_item

data modify storage guilib:temp temp.temp set from storage guilib:temp temp.item.id
execute store success score #test guilib.temp run data modify storage guilib:temp temp.temp set from storage guilib:temp temp.test.id
