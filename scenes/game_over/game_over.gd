extends Control

@onready var space_lbl = $MarginContainer/SpaceLbl
@onready var timer = $Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	Planee.on_plane_died.connect(_on_plane_died)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_plane_died():
	show()
	timer.start()

func _on_timer_timeout():
	_showPlayAgainLbl()

func _showPlayAgainLbl() -> void:
	space_lbl.show()
	
