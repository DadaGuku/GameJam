### Player.gd
extends CharacterBody2D
class_name Player

@export var sprite : AnimatedSprite2D

var last_direction : Vector2
var SPEED = 300

func _ready():
	Global.player = self
