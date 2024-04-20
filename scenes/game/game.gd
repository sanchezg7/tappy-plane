extends Node2D

# Put as prop in inspector so that we can select the respective scene in the inspector panel
@export var pipes_scene: PackedScene

@onready var pipes_holder = $PipesHolder

# Called when the node enters the scene tree for the first time.
func _ready():
	spawn_pipes()	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func spawn_pipes() -> void:
	# it's been created at this point. Default position of 0,0. Move it to be off screen
	var new_pipes = pipes_scene.instantiate()
	new_pipes.position = Vector2(550, 450)
	# add to this node
	pipes_holder.add_child(new_pipes)

func _on_spawn_timer_timeout():
	spawn_pipes()
