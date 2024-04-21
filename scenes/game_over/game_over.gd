extends Control

@onready var space_lbl = $MarginContainer/SpaceLbl
@onready var timer = $Timer

@onready var isGameOver: bool = false
@onready var game_over_sound = $GameOverSound

# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	Planee.on_plane_died.connect(_handleGameOver)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if isGameOver && Planee.isActionFly():
		Game.load_game_scene()

func _handleGameOver():
	game_over_sound.play()
	isGameOver = true
	show()
	timer.start()

func _on_timer_timeout():
	_showPlayAgainLbl()

func _showPlayAgainLbl() -> void:
	space_lbl.show()
	
