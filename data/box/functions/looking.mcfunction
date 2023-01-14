tag @a[predicate=box:havebox] add havebox
tag @a[predicate=!box:havebox] remove havebox

execute as @a[tag=havebox] at @s anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["looking"]}
execute as @a[tag=havebox] at @s anchored eyes positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["looking"]}
execute as @a[tag=havebox] at @s anchored eyes positioned ^ ^ ^2 run summon marker ~ ~ ~ {Tags:["looking"]}
execute as @a[tag=havebox] at @s anchored eyes positioned ^ ^ ^3 run summon marker ~ ~ ~ {Tags:["looking"]}

execute as @e[tag=looking] at @s if block ~ ~ ~ #box:shulker run tag @s add inbox
execute if score @r open_shulker_box matches 1 run function box:put_in

scoreboard players set @a open_shulker_box 0
kill @e[type=marker,tag=looking]

advancement revoke @r only box:tick
