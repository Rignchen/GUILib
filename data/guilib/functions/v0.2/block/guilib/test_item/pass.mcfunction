## function guilib:v0.2/block/guilib/test_item/loop

#guilib:test
tellraw @a[tag=convention.debug] [{"text":"found"},{"score":{"name": "#temp1","objective": "guilib.temp"}}]

data modify storage guilib:test items append value {}
data modify storage guilib:test items[-1].id set from storage guilib:temp temp.item[0].id
data modify storage guilib:test items[-1].slot set from storage guilib:temp temp.item[0].slot