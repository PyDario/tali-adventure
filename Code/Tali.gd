extends KinematicBody2D

const SPEED = 100
const GRAVITY = 100
var velocity = Vector2()

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var bool_floor = is_on_floor()
	var _vector_dummy = Vector2()
	if Input.is_action_pressed("jump"):
		if is_on_floor():
			velocity = Vector2(0, -GRAVITY)
	else:
		velocity = Vector2(0, GRAVITY)
	if Input.is_action_pressed("right"):
		velocity.x += 1 * SPEED
	if Input.is_action_pressed("left"):
		velocity.x -= 1 * SPEED
	#velocity.y += GRAVITY
	_vector_dummy = move_and_slide(velocity)
	#print(_vector_dummy)
	print(bool_floor)
