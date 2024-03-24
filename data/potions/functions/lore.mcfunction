data remove storage potions:macro Line
data remove storage potions:macro Item.components."minecraft:lore"
data merge storage potions:macro {Item:{components:{"minecraft:lore":[]}}}
execute if data storage potions:macro Item.components."minecraft:custom_data".Potions.[1] run data modify storage potions:macro Item.components."minecraft:lore" append value '{"text":"Next 12 Potions","color":"green","italic":false}'
scoreboard players set @s count 13

#Line 1 
execute unless data storage potions:macro Item.components."minecraft:custom_data".Potions.[1] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.components."minecraft:custom_data".Potions.[1]
function potions:setlore with storage potions:macro Line

#Line 2
execute unless data storage potions:macro Item.components."minecraft:custom_data".Potions.[2] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.components."minecraft:custom_data".Potions.[2]
function potions:setlore with storage potions:macro Line

#Line 3
execute unless data storage potions:macro Item.components."minecraft:custom_data".Potions.[3] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.components."minecraft:custom_data".Potions.[3]
function potions:setlore with storage potions:macro Line

#Line 4
execute unless data storage potions:macro Item.components."minecraft:custom_data".Potions.[4] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.components."minecraft:custom_data".Potions.[4]
function potions:setlore with storage potions:macro Line

#Line 5
execute unless data storage potions:macro Item.components."minecraft:custom_data".Potions.[5] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.components."minecraft:custom_data".Potions.[5]
function potions:setlore with storage potions:macro Line

#Line 6
execute unless data storage potions:macro Item.components."minecraft:custom_data".Potions.[6] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.components."minecraft:custom_data".Potions.[6]
function potions:setlore with storage potions:macro Line

#Line 7
execute unless data storage potions:macro Item.components."minecraft:custom_data".Potions.[7] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.components."minecraft:custom_data".Potions.[7]
function potions:setlore with storage potions:macro Line

#Line 8
execute unless data storage potions:macro Item.components."minecraft:custom_data".Potions.[8] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.components."minecraft:custom_data".Potions.[8]
function potions:setlore with storage potions:macro Line

#Line 9
execute unless data storage potions:macro Item.components."minecraft:custom_data".Potions.[9] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.components."minecraft:custom_data".Potions.[9]
function potions:setlore with storage potions:macro Line

#Line 10
execute unless data storage potions:macro Item.components."minecraft:custom_data".Potions.[10] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.components."minecraft:custom_data".Potions.[10]
function potions:setlore with storage potions:macro Line

#Line 11
execute unless data storage potions:macro Item.components."minecraft:custom_data".Potions.[11] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.components."minecraft:custom_data".Potions.[11]
function potions:setlore with storage potions:macro Line

#Line 12
execute unless data storage potions:macro Item.components."minecraft:custom_data".Potions.[12] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.components."minecraft:custom_data".Potions.[12]
function potions:setlore with storage potions:macro Line

#Line 13
execute unless data storage potions:macro Item.components."minecraft:custom_data".Potions.[13] run return 0

data modify storage potions:macro count set value 13
function potions:count with storage potions:macro
scoreboard players remove @s count 13
execute store result storage potions:macro count byte 1 run scoreboard players get @s count

function potions:setcount with storage potions:macro
