## function guilib:v0.6/load

# beta: -(100 * version + beta)
# v1.2 -> -102

execute if score #GUILib load.status matches ..000600 run scoreboard players set #GUILib load.status 000600
execute unless score #GUILib load.status = #GUILib load.status run scoreboard players set #GUILib load.status 000600
