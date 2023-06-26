## advancement guilib:v0.4/advent/fake_stone

#Make reusable
advancement revoke @s only guilib:v0.4/advent/fake_stone

execute if score #GUILib load.status matches -4 run clear @s stone{guilib:1b}
