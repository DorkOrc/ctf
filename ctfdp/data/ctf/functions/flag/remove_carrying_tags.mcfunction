scoreboard players reset @s place_timer
scoreboard players reset @s leave_game
tag @s remove carrying
tag @e[type=item, tag=flag, sort=nearest, limit=1] remove carried
tag @s remove carrying_desert
tag @s remove carrying_cherry
tag @s remove carrying_ice
tag @s remove carrying_mesa
tag @s remove carrying_forest
function ctf:flag/remove_placer_item