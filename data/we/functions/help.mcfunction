# Begin help command file.
# Tellers.
tellraw @s [{"text":"\u00A76WE \u00A78: \u00A72World Edit Help Page -->"}]
tellraw @s [{"text":"\u00A7b/\u00A75trigger \u00A7dwe.help \u00A78--> \u00A77Shows you this guide\u00A78."}]
tellraw @s [{"text":"\u00A7b/\u00A75trigger \u00A7dwe.choose \u00A78--> \u00A77Chooses the block that you are holding as the fill block\u00A78."}]
tellraw @s [{"text":"\u00A7b/\u00A75trigger \u00A7dwe.pos1 \u00A78--> \u00A77Sets position one\u00A78."}]
tellraw @s [{"text":"\u00A7b/\u00A75trigger \u00A7dwe.pos2 \u00A78--> \u00A77Sets position two\u00A78."}]
tellraw @s [{"text":"\u00A7b/\u00A75trigger \u00A7TODO \u00A78--> \u00A77MORE TO COME\u00A78."}]
# Resetters.
scoreboard players reset @s we.help
scoreboard players enable @a we.help
