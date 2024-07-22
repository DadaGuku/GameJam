### Player.gd
extends CharacterBody2D
class_name Player

@export var inventory_data: InventoryData
signal toggle_inventory

@onready var sprite = $AnimatedSprite2D



var last_direction : Vector2
var SPEED = 300

func _ready():
	Global.player = self

func _unhandled_input(_event):
	
	if Input.is_action_just_pressed("inventory"):
		toggle_inventory.emit()
