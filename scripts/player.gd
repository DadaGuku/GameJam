extends CharacterBody2D
class_name Player

@export var sprite : AnimatedSprite2D

var last_direction : Vector2
var SPEED = 300

func ready():
	last_direction = Vector2(0,1)
	Global.player = self
