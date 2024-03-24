tag @a remove add

$execute if data storage potions:macro {Item:{components:{"minecraft:custom_data":{Potions:[{type:"$(type)",id:"$(id)"}]}}}} run tag @s add add

$execute unless entity @s[tag=add] run data modify storage potions:macro Item.components."minecraft:custom_data".Potions append value {id: "$(id)", type:"$(type)", count: 1b}

execute unless entity @s[tag=add] run return 0

$execute store result score @s count run data get storage potions:macro Item.components."minecraft:custom_data".Potions.[{type:"$(type)",id:"$(id)"}].count 1
scoreboard players add @s count 1
$execute store result storage potions:macro Item.components."minecraft:custom_data".Potions.[{type:"$(type)",id:"$(id)"}].count byte 1 run scoreboard players get @s count