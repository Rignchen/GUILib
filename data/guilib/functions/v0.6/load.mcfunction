## function #guilib:v0.6/load

#message
tellraw @a[tag=convention.debug] {"text": "Loaded: GuiLib by Rignchen","color": "green"}

#scoreboard
scoreboard objectives add guilib.temp dummy
scoreboard objectives add guilib.slots dummy
#datapack version
function guilib:v0.6/load_version

#ticks
execute if score #GUILib load.status matches 000600 run function guilib:v0.6/tick

#define
#define entity @a[tag=convention.debug]
#define score_holder #temp
#define storage guilib:temp
