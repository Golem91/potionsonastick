$data modify storage potions:macro Item.tag.display.Name set value "[{\"text\":\"Magic Want (\",\"color\":\"dark_purple\",\"italic\":false},{\"text\":\" $(Count) \",\"color\":\"dark_green\"},{\"color\":\"white\",\"translate\":\"want.$(id).$(type)\",\"fallback\":\"()\",\"with\":[\"[de_de]\",\"[en_us]\"]},{\"text\":\" )\",\"color\":\"dark_purple\"}]"

execute unless data storage potions:macro Item.tag.Potion.[] run data modify storage potions:macro Item.tag.display.Name set value "[{\"text\":\"Magic Want ()\",\"color\":\"dark_purple\",\"italic\":false}]"

function potions:lore