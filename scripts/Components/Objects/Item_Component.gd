extends Node
class_name Item_Component

@export var item_name = ""
@export var item_type = ""
@export var item_texture: Texture
@export var item_effects = ""
var scene_path: String = "res://scenes/item_component.tscn"

@onready var icon_sprite = $Sprite2D

func _ready():
	#Set texture to reflect ingame
	if not Engine.is_editor_hint():
		icon_sprite.texture = item_texture

func _process(_delta):
	#Set Texture for Editor
	if Engine.is_editor_hint():
		icon_sprite.texture = item_texture
