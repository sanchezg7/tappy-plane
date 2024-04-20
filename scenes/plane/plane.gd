extends CharacterBody2D

const GRAVITY: float = 1000.0
const POWER: float = -400.0
@onready var sprite: AnimatedSprite2D = $Sprite
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var engine_sound = $EngineSound
const ANIM_POWER = "onPower"

# Called when the node enters the scene tree for the first time.
func _ready():
	engine_sound.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
# recall, this is inherited from NODE type
func _physics_process(delta):
	velocity.y += GRAVITY * delta
	fly()
	move_and_slide()
	if is_on_floor() == true:
		handleDie()

func handleDie() -> void:
	sprite.stop()
	# hint to stop the physics calc
	set_physics_process(false) 
	Planee.on_plane_died.emit()
	engine_sound.stop()

func fly() -> void:
	if Input.is_action_just_pressed(Planee.ACT_FLY) == true:
		velocity.y = POWER
		animation_player.play(ANIM_POWER)
