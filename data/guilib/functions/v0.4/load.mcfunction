## function #guilib:v0.4/load

#scoreboard
scoreboard objectives add guilib.temp dummy
#datapack version
function guilib:v0.4/load_version

#ticks
execute if score #GUILib load.status matches -4 run function guilib:v0.4/tick

#define
#define entity @a[tag=convention.debug]
#define score_holder #temp
#define storage guilib:temp

function guilib:v0.4/test
