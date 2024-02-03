$execute if data storage potions:macro Item.tag.Potion.[$(Count)] run scoreboard players add @s count 1
execute store result storage potions:macro Count byte 1 run scoreboard players get @s count

$execute unless data storage potions:macro Item.tag.Potion.[$(Count)] run return 0
function potions:count with storage potions:macro
