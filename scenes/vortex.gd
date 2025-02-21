extends Area2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
const SPEED: float = 280.0
var status = true

func _ready():
	connect("body_entered", _on_body_entered)

func _process(delta):
	position.x += SPEED * delta

func _on_body_entered(body):
	if body is CharacterBody2D and status:
		print("You win!")
		status = false
		get_tree().reload_current_scene()
	
