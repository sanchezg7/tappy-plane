extends Control

@onready var high_score_value_lbl = $MarginContainer/HighScoreValueLbl

# Called when the node enters the scene tree for the first time.
func _ready():
	high_score_value_lbl.text = str(Score.get_high_score())
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
