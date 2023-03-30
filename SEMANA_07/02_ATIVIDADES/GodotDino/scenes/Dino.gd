extends KinematicBody2D

const GRAVITY = 50
const JUMP_FORCE = 600
const SPEED = 200

var velocity = Vector2.ZERO

func _physics_process(delta):
	# Apply gravity to the player's velocity
	velocity.y += GRAVITY
	
	# Get the current keyboard input
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	
	# Update the velocity based on the input
	velocity.x = input_vector.x * SPEED
	
	# Check if the player is jumping
	if Input.is_action_pressed("ui_up") and is_on_floor():
		# Set the y velocity to the negative jump force to make the player jump
		velocity.y = -JUMP_FORCE
	
	# Move the player based on the velocity
	move_and_slide(velocity, Vector2.UP)
