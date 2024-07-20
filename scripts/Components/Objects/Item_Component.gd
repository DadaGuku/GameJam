### Item_Component.gd
@tool

extends Node
class_name Item_Component

#Itemattributes
@export var item_name = ""
@export var item_type = ""
@export var item_texture: Texture
@export var item_effects = ""
var scene_path: String = "res://scenes/item_component.tscn"

@onready var icon_sprite = $Sprite2D

var player_in_range = false

func _ready():
	#Set texture to reflect ingame
	if not Engine.is_editor_hint():
		icon_sprite.texture = item_texture

func _process(_delta):
	#Set Texture for Editor
	if Engine.is_editor_hint():
		icon_sprite.texture = item_texture
		
	if player_in_range and Input.is_action_just_pressed("interact"):
		pickup_item()

#Add Item to Dictonary
func pickup_item():
	var item = {
		"quantity": 1,
		"type": item_type,
		"name": item_name,
		"texture": item_texture,
		"effects": item_effects,
		"scene_path": scene_path
	}
	if Global.player:
		Inventorymanager.add_item(item)
		self.queue_free()
	

func _on_area_2d_body_entered(body):
	if body.is_in_group("Player"):
		player_in_range = true

func _on_area_2d_body_exited(body):
	if !body.is_in_group("Player"):
		player_in_range = false
