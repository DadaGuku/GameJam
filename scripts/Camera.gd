extends Camera2D


@onready var player = %Player
@onready var size: Vector2 = get_viewport_rect().size/zoom

func _ready() -> void:
	update_position()

func _physics_process(_delta) -> void:
	update_position()

func update_position() -> void:
	var current_cell: Vector2i = Vector2i(player.global_position / size)
	global_position = current_cell*Vector2i(size)
