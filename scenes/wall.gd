extends Node2D

const SPEED: float = 300.0

func _process(delta):
	position.x += SPEED * delta
