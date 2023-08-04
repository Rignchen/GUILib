## advancement guilib:v0.5/advent/fake_stone

#Make reusable
advancement revoke @s only guilib:v0.5/advent/fake_stone

execute if score #GUILib load.status matches -5 run clear @s stone{guilib:1b}
