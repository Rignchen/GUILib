## function guilib:v0.2/load

scoreboard objectives add guilib.version dummy
# beta: -(100 * version + beta)
# v1.2 -> -102

execute if score #wold guilib.version matches -1..0 run scoreboard players set #world guilib.version -2
execute unless score #wold guilib.version = #world guilib.version run scoreboard players set #world guilib.version -2
