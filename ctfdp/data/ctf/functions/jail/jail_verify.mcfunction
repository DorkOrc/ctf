execute at @s unless block ~ -64 ~ #wool run return 0

tag @s add in_jail
tag @s remove return_to_jail
execute if predicate ctf:in_own_biome run function ctf:jail/in_own_jail
