## function guilib:v0.6/block/guilib/loop/test_item/loop/ctc/

execute store success score #test guilib.temp run data modify storage guilib:temp test.ctc.id set from storage guilib:temp Items[0].tag.ctc.id
execute if score #test guilib.temp matches 0 store success score #test guilib.temp unless data storage guilib:temp Items[0].tag.ctc.id
