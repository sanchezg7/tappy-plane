extends Node

signal on_score_updated(score: int)

var _current_score: int = 0
var _high_score: int = 0

func get_current_score() -> int:
	return _current_score
	
func get_high_score() -> int:
	return _high_score

func set_current_score(v: int) -> void:
	_current_score = v
	on_score_updated.emit(get_current_score())
	if _current_score > _high_score:
		_high_score = _current_score

func increment_current_score() -> void:
	set_current_score(_current_score + 1)
