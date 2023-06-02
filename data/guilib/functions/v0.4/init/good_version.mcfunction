## function guilib:v0.4/init/

function guilib:v0.4/block/get_storage

function guilib:v0.4/init/sort
data modify storage guilib:temp guilib.Slots set from storage guilib:temp temp
data modify storage guilib:temp temp set value {}

function guilib:v0.4/block/put_back_in_storage
tag @s add guilib
