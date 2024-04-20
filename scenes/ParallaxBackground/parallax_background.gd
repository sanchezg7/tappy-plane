extends ParallaxBackground


# Called when the node enters the scene tree for the first time.
func _ready():
	Planee.on_plane_died.connect(_pause_scrolling)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	scroll_offset.x -= Game.SCROLL_SPEED * delta

func _pause_scrolling():
	set_process(false)
