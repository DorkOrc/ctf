# runs every tick as and at every invincible player
execute store result score $invincibility_display.integer_seconds var store result score $invincibility_display.second_tenths var run scoreboard players remove @s invincibility 1
scoreboard players operation $invincibility_display.integer_seconds var /= 20 const
scoreboard players operation $invincibility_display.second_tenths var %= 20 const
scoreboard players operation $invincibility_display.second_tenths var /= 2 const

title @s[scores={invincibility=1..}] actionbar [{"text":"INVINCIBLE for","color":"#BCFFE0"},{"text":" "},[{"score":{"name":"$invincibility_display.integer_seconds","objective":"var"},"color":"#69FFEE"},".",{"score":{"name":"$invincibility_display.second_tenths","objective":"var"}}],{"text":" seconds!","color":"#BCFFE0"}]
title @s[scores={invincibility=0}] actionbar ""

particle scrape ~ ~1 ~ 0.5 0.5 0.5 1 3 force
