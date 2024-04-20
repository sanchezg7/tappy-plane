extends Node2D

const SCROLL_SPEED: float = 160.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= SCROLL_SPEED * delta
	

func _on_screen_exited():
	queue_free()


func _on_pipe_body_entered(body):
	if body.is_in_group(Game.GROUP_PLAYER) == true:
		var plane = body
		plane.handleDie()


func _on_laser_body_exited(body):
	if body.is_in_group(Game.GROUP_PLAYER) == true:
		var plane = body
		Score.increment_current_score()
