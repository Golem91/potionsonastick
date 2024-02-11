data remove storage potions:macro Item
data remove storage potions:macro Potion
tag @s remove normal

data modify storage potions:macro Item set from entity @s SelectedItem
data modify storage potions:macro Potion set from storage potions:macro Item.tag.Potion.[0]

execute if data storage potions:macro {Potion:{type:"minecraft:potion"}} run function potions:potion/normal with storage potions:macro Potion
execute if entity @s[tag=normal] run function potions:damage
execute if entity @s[tag=normal] run return 0

summon marker ~ ~ ~ {Tags:["direction"]}
execute at @s if entity @s[predicate=!potions:power_1,predicate=!potions:power_2,predicate=!potions:power_3,predicate=!potions:power_4,predicate=!potions:power_5] as @e[tag=direction,limit=1] positioned 0.0 0.0 0.0 run function potions:potion/get_motion {power:0.5d}
execute at @s if entity @s[predicate=potions:power_1] as @e[tag=direction,limit=1] positioned 0.0 0.0 0.0 run function potions:potion/get_motion {power:0.6d}
execute at @s if entity @s[predicate=potions:power_2] as @e[tag=direction,limit=1] positioned 0.0 0.0 0.0 run function potions:potion/get_motion {power:0.7d}
execute at @s if entity @s[predicate=potions:power_3] as @e[tag=direction,limit=1] positioned 0.0 0.0 0.0 run function potions:potion/get_motion {power:0.8d}
execute at @s if entity @s[predicate=potions:power_4] as @e[tag=direction,limit=1] positioned 0.0 0.0 0.0 run function potions:potion/get_motion {power:0.9d}
execute at @s if entity @s[predicate=potions:power_5] as @e[tag=direction,limit=1] positioned 0.0 0.0 0.0 run function potions:potion/get_motion {power:1.0d}

execute if data storage potions:macro {Potion:{type:"minecraft:splash_potion"}} at @s run function potions:potion/throw with storage potions:macro Potion
execute if data storage potions:macro {Potion:{type:"minecraft:lingering_potion"}} at @s run function potions:potion/throw with storage potions:macro Potion
function potions:damage