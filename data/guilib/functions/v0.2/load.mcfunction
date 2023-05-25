## function #guilib:v0.2/load

#scoreboard
scoreboard objectives add guilib.temp dummy
#datapack version
function guilib:v0.2/load_version

#ticks
execute if score #GUILib load.status matches -2 run function guilib:v0.2/tick

#define
#define entity @a[tag=convention.debug]
#define score_holder #temp
#define storage guilib:temp

function guilib:v0.2/test
