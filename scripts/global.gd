### Global.gd
extends Node
#All Variables that are available everywhere

var player = null

var world_scene = preload("res://scenes/main.tscn")
var house_scene = preload("res://scenes/house.tscn")

var curr_scene

func _ready():
	curr_scene = 1

func switch_scene():
	if curr_scene == 1:
		get_tree().change_scene_to_packed(house_scene)
		curr_scene = 2
	else:
		get_tree().change_scene_to_packed(world_scene)
		curr_scene = 1
	
