extends State
class_name PlayerIdle

@export var player : Player
@export var sprite : AnimatedSprite2D

func Enter():
	Change_Animation()
	pass


func Exit():
	pass
	
func Update(_delta):
	if(Input.get_vector("left","right","up","down")):
		Transitioned.emit(self, "walk")

func Change_Animation():
	var dir = player.last_direction
	if(dir.x < 0):
		sprite.play("idle_side")
		sprite.flip_h = 1
	elif(dir.x > 0):
		sprite.play("idle_side")
		sprite.flip_h = 0
	elif(dir.y < 0):
		sprite.play("idle_up")	
	elif(dir.y > 0):
		sprite.play("idle_down")
