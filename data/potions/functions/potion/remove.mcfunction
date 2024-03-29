execute store result score @s count run data get storage potions:macro Item.components."minecraft:custom_data".Potions.[0].count 1
scoreboard players remove @s count 1
execute store result storage potions:macro Item.components."minecraft:custom_data".Potions.[0].count byte 1 run scoreboard players get @s count

data modify storage potions:macro Potion set from storage potions:macro Item.components."minecraft:custom_data".Potions.[0]

#playsound
execute at @s if data storage potions:macro {Potion:{type:"minecraft:potion"}} run playsound minecraft:entity.generic.drink player @s
execute at @s if data storage potions:macro {Potion:{type:"minecraft:splash_potion"}} run playsound minecraft:entity.splash_potion.throw player @s ~ ~ ~ 1 0
execute at @s if data storage potions:macro {Potion:{type:"minecraft:lingering_potion"}} run playsound minecraft:entity.lingering_potion.throw player @s ~ ~ ~ 1 0

execute if data storage potions:macro {Potion:{count:0b}} run data remove storage potions:macro Item.components."minecraft:custom_data".Potions.[0]

data modify storage potions:macro Potion set from storage potions:macro Item.components."minecraft:custom_data".Potions.[0]
function potions:name with storage potions:macro Potion
function potions:texture
execute unless data storage potions:macro Item.components."minecraft:custom_data".Potions.[0] run data modify storage potions:macro custom_model_data set value 10000

#transfer NBT back to player
function potions:replace with storage potions:macro

scoreboard players set @s damage -1
item modify entity @s weapon.mainhand potions:damage
