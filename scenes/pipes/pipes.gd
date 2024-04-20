extends Node2D

const SCROLL_SPEED: float = 160.0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	position.x -= SCROLL_SPEED * delta
	pass

func _on_screen_exited():
	queue_free()
