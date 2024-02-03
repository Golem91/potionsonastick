data remove storage potions:macro Line
data remove storage potions:macro Item.tag.display.Lore
execute if data storage potions:macro Item.tag.Potion.[1] run data modify storage potions:macro Item.tag.display.Lore append value '{"text":"Next 12 Potions","color":"green","italic":false}'
scoreboard players set @s count 13

#Line 1
execute unless data storage potions:macro Item.tag.Potion.[1] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.tag.Potion.[1]
function potions:setlore with storage potions:macro Line

#Line 2
execute unless data storage potions:macro Item.tag.Potion.[2] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.tag.Potion.[2]
function potions:setlore with storage potions:macro Line

#Line 3
execute unless data storage potions:macro Item.tag.Potion.[3] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.tag.Potion.[3]
function potions:setlore with storage potions:macro Line

#Line 4
execute unless data storage potions:macro Item.tag.Potion.[4] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.tag.Potion.[4]
function potions:setlore with storage potions:macro Line

#Line 5
execute unless data storage potions:macro Item.tag.Potion.[5] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.tag.Potion.[5]
function potions:setlore with storage potions:macro Line

#Line 6
execute unless data storage potions:macro Item.tag.Potion.[6] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.tag.Potion.[6]
function potions:setlore with storage potions:macro Line

#Line 7
execute unless data storage potions:macro Item.tag.Potion.[7] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.tag.Potion.[7]
function potions:setlore with storage potions:macro Line

#Line 8
execute unless data storage potions:macro Item.tag.Potion.[8] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.tag.Potion.[8]
function potions:setlore with storage potions:macro Line

#Line 9
execute unless data storage potions:macro Item.tag.Potion.[9] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.tag.Potion.[9]
function potions:setlore with storage potions:macro Line

#Line 10
execute unless data storage potions:macro Item.tag.Potion.[10] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.tag.Potion.[10]
function potions:setlore with storage potions:macro Line

#Line 11
execute unless data storage potions:macro Item.tag.Potion.[11] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.tag.Potion.[11]
function potions:setlore with storage potions:macro Line

#Line 12
execute unless data storage potions:macro Item.tag.Potion.[12] run return 0
data modify storage potions:macro Line set from storage potions:macro Item.tag.Potion.[12]
function potions:setlore with storage potions:macro Line

#Line 13
execute unless data storage potions:macro Item.tag.Potion.[13] run return 0

data modify storage potions:macro Count set value 13
function potions:count with storage potions:macro
scoreboard players remove @s count 13
execute store result storage potions:macro Count byte 1 run scoreboard players get @s count

function potions:setcount with storage potions:macro
