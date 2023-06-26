## function guilib:v0.5/load

# beta: -(100 * version + beta)
# v1.2 -> -102

execute if score #GUILib load.status matches -4..0 run scoreboard players set #GUILib load.status -5
execute unless score #GUILib load.status = #GUILib load.status run scoreboard players set #GUILib load.status -5
