## function #guilib:v0.3/load

#scoreboard
scoreboard objectives add guilib.temp dummy
#datapack version
function guilib:v0.3/load_version

#ticks
execute if score #GUILib load.status matches -3 run function guilib:v0.3/tick

#define
#define entity @a[tag=convention.debug]
#define score_holder #temp
#define storage guilib:temp

function guilib:v0.3/test

