extends CharacterBody2D


const GRAVITY: float = 700.0
const POWER: float = -400.0

@onready var sprite: AnimatedSprite2D = $Sprite

# Called when the node enters the scene tree for the first time.
func _ready():
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

func fly() -> void:
	if Input.is_action_just_pressed("fly") == true:
		velocity.y = POWER
