## function guilib:v0.2/block/tick

# get the values in the guilib data
execute if entity @s[type=item_display] run data modify storage guilib:temp guilib set from entity @s item.tag.guilib
execute if entity @s[type=#guilib:v0.2/item_frame] run data modify storage guilib:temp guilib set from entity @s Item.tag.guilib
execute if entity @s[type=armor_stand] run data modify storage guilib:temp guilib set from entity @s ArmorItems[3].tag.guilib
execute if entity @s[type=marker] run data modify storage guilib:temp guilib set from entity @s data.guilib
