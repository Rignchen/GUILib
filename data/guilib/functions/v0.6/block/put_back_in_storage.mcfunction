## function guilib:v0.6/block/tick

# get the values in the guilib data
execute if entity @s[type=item_display] run data modify entity @s item.tag.guilib set from storage guilib:temp guilib
execute if entity @s[type=#guilib:v0.6/item_frame] run data modify entity @s Item.tag.guilib set from storage guilib:temp guilib
execute if entity @s[type=armor_stand] run data modify entity @s ArmorItems[3].tag.guilib set from storage guilib:temp guilib
execute if entity @s[type=marker] run data modify entity @s data.guilib set from storage guilib:temp guilib
