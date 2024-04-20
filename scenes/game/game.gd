extends Node2D

# Put as prop in inspector so that we can select the respective scene in the inspector panel
@export var pipes_scene: PackedScene

@onready var pipes_holder = $PipesHolder
@onready var spawn_upper = $SpawnUpper
@onready var spawn_lower = $SpawnLower

# Called when the node enters the scene tree for the first time.
func _ready():
	# force a new seed for randf
	randomize()
	spawn_pipes()	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func spawn_pipes() -> void:
	# it's been created at this point. Default position of 0,0. Move it to be off screen
	var new_pipes = pipes_scene.instantiate()
	var y_pos = randf_range(spawn_upper.position.y, spawn_lower.position.y)
	new_pipes.position = Vector2(spawn_upper.position.x, y_pos)
	# add to this node
	pipes_holder.add_child(new_pipes)

func _on_spawn_timer_timeout():
	spawn_pipes()


func _on_plane_died():
	print("died")
