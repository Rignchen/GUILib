## function guilib:v0.5/init/

function guilib:v0.5/block/get_storage

function guilib:v0.5/init/amount
function guilib:v0.5/init/sort
data modify storage guilib:temp guilib.Slots set from storage guilib:temp sort

function guilib:v0.5/block/put_back_in_storage
tag @s add guilib
data remove storage guilib:temp sort
