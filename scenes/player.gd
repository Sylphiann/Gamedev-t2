extends CharacterBody2D

const vertical_speed: float = 210.0
const horizontal_speed: float = 300.0
const tilt_angle = 15.0

func _ready():
	print("Game start!")

func _process(delta):
	velocity.x = horizontal_speed + (delta * 3000.0)
	var direction = 0
	
	if Input.is_action_pressed("ui_up"):
		velocity.y = -vertical_speed
		direction = -1
	elif Input.is_action_pressed("ui_down"):
		velocity.y = vertical_speed
		direction = 1
	else:
		velocity.y = 0.0
		
	rotation_degrees = direction * tilt_angle
	
	move_and_slide()
