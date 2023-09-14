## function guilib:v0.6/block/guilib/loop/test_item/loop/ctc

execute store result score #test guilib.temp unless data storage guilib:temp Items[0].tag.ctc.traits
execute if score #test guilib.temp matches 0 run function guilib:v0.6/block/guilib/loop/test_item/loop/ctc/match_traits
