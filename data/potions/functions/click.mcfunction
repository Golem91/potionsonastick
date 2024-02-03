data remove storage potions:macro Item
data remove storage potions:macro Potion
tag @s remove normal

data modify storage potions:macro Item set from entity @s SelectedItem
data modify storage potions:macro Potion set from storage potions:macro Item.tag.Potion.[0]

execute if data storage potions:macro {Potion:{type:"minecraft:potion"}} run function potions:potion/normal with storage potions:macro Potion
execute if entity @s[tag=normal] run return 0

summon marker ~ ~ ~ {Tags:["direction"]}
execute at @s as @e[tag=direction,limit=1] positioned 0.0 0.0 0.0 run function potions:potion/get_motion

execute if data storage potions:macro {Potion:{type:"minecraft:splash_potion"}} at @s run function potions:potion/throw with storage potions:macro Potion
execute if data storage potions:macro {Potion:{type:"minecraft:lingering_potion"}} at @s run function potions:potion/throw with storage potions:macro Potion