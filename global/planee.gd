extends Node

signal on_plane_died

const ACT_FLY: String = "fly"
#const ACT_FLY_SPACE: String = "flyspace"
#const ACT_FLY_LCLICK: String = "flylclick"
#const ACT_FLY_TOUCH_DEPRESS: String = "flytouchdepress"

func isActionFly():
	return Input.is_action_just_pressed(Planee.ACT_FLY)
