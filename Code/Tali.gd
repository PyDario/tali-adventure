extends KinematicBody2D

const SPEED = 100
const GRAVITY = 100
var velocity = Vector2()

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	velocity = Vector2()
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	velocity *= SPEED
	velocity.y += GRAVITY
	velocity = move_and_slide(velocity)
