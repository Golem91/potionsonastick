$execute anchored eyes run summon minecraft:potion ^ ^ ^ {Motion:$(Motion),Tags:["owned"],Item:{id:"$(type)",count:1b,components:{"minecraft:potion_contents":{potion:"$(id)"}}}}
data modify entity @e[type=potion,sort=nearest,limit=1,tag=owned] Owner set from entity @s UUID
tag @e remove owned

function potions:potion/remove