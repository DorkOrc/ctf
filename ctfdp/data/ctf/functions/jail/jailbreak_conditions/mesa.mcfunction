scoreboard players operation $jail.break.cooldown.mesa.math var = $jail.break.cooldown.mesa var
scoreboard players operation $jail.break.cooldown.mesa.math var /= 20 const

execute if score $jail.break.cooldown.mesa var matches 1.. if score $jail.break.cooldown.mesa.cooldown var matches 0 run tellraw @s [{"text":"[","color":"red"},{"text":"!"},{"text":"]","color":"red"},{"text":" Jailbreak is on cooldown! Try again in ","color":"#FF9294"},{"score":{"name":"$jail.break.cooldown.mesa.math","objective":"var"}}," seconds",{"text":".","color":"#FF9294"}]
execute if score $jail.break.cooldown.mesa var matches 1.. if score $jail.break.cooldown.mesa.cooldown var matches 0 run scoreboard players set $jail.break.cooldown.mesa.cooldown var 100

execute unless score $jail.break.cooldown.mesa var matches 1.. run function ctf:jail/jailbreak/mesa