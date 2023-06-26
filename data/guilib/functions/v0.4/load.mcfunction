## function #guilib:v0.4/load

#message
tellraw @a[tag=convention.debug] {"text": "Loaded: GuiLib by Rignchen","color": "green"}

#scoreboard
scoreboard objectives add guilib.temp dummy
scoreboard objectives add guilib.slots dummy
#datapack version
function guilib:v0.4/load_version

#ticks
execute if score #GUILib load.status matches -4 run function guilib:v0.4/tick

#define
#define entity @a[tag=convention.debug]
#define score_holder #temp
#define storage guilib:temp

execute if entity Onyx_T74 run function guilib:v0.4/test
