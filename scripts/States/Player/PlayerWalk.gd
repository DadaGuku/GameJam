extends State
class_name PlayerWalk

@export var player : Player
@export var sprite : AnimatedSprite2D

func Enter():
	pass

func Exit():
	pass

func Update(_delta):
	if(!Input.get_vector("left","right","up","down")):
		#Transition to Idle
		Transitioned.emit(self, "idle")


func Physics_Update(_delta):
	var input_direction = Input.get_vector("left","right","up","down")
	player.set_velocity(input_direction * player.SPEED)
	Change_Animation()
	player.move_and_slide()

func Change_Animation():
	var input_direction = Input.get_vector("left","right","up","down")
	if(input_direction.x < 0):
		player.last_direction = Vector2(-1,0)
		sprite.play("walk_side")
		sprite.flip_h = 1
	elif(input_direction.x > 0):
		player.last_direction = Vector2(1,0)
		sprite.play("walk_side")
		sprite.flip_h = 0
	elif(input_direction.y < 0):
		player.last_direction = Vector2(0,-1)
		sprite.play("walk_up")	
	elif(input_direction.y > 0):
		player.last_direction = Vector2(0,1)
		sprite.play("walk_down")	
