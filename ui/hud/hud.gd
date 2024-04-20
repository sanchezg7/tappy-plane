extends Control

@onready var score_lbl = $MarginContainer/ScoreLbl

# Called when the node enters the scene tree for the first time.
func _ready():
	Score.on_score_updated.connect(onScoreUpdated)
	pass # Replace with function body.

func onScoreUpdated(score: int) -> void:
	score_lbl.text = str(score)
