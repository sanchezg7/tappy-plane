extends Control

@onready var score_lbl = $MarginContainer/ScoreLbl

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	score_lbl.text = str(Score.get_current_score())
