$execute anchored eyes run summon minecraft:potion ^ ^ ^ {Motion:$(Motion),Tags:["owned"],Item:{id:"$(type)",Count:1b,tag:{Potion:"$(id)"}}}
data modify entity @e[type=potion,sort=nearest,limit=1,tag=owned] Owner set from entity @s UUID
tag @e remove owned

function potions:potion/remove