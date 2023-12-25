extends CharacterBody2D


const gravity = 500.0
const jumpHeight = 400.0

func _physics_process(delta):
	if Input.is_action_pressed("Jump"):
		velocity.y -= jumpHeight

	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
		
