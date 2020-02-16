extends KinematicBody2D

const SPEED = 100
const GRAVITY = 400
const UP_VECTOR = Vector2(0, -1)
const JUMP_POWER = GRAVITY / 2

var velocity = Vector2()

#debug variablen
var _vector_dummy = Vector2()

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	velocity.x = 0
	if is_on_floor():
		velocity.y = 0
	else:
		velocity.y += GRAVITY * delta
	
	player_action()
	
	_vector_dummy = move_and_slide(velocity, UP_VECTOR)
	print(_vector_dummy)

func player_action():
	if is_on_floor():
		if Input.is_action_pressed("jump"):
			velocity.y = -JUMP_POWER
			
	if Input.is_action_pressed("right"):
		velocity.x = 1 * SPEED
	if Input.is_action_pressed("left"):
		velocity.x = -1 * SPEED
