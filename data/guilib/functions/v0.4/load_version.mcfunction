## function guilib:v0.4/load

# beta: -(100 * version + beta)
# v1.2 -> -102

execute if score #GUILib load.status matches -3..0 run scoreboard players set #GUILib load.status -4
execute unless score #GUILib load.status = #GUILib load.status run scoreboard players set #GUILib load.status -4
