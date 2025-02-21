extends ParallaxBackground

const SPEED: float = 300.0

func _process(delta):
	scroll_offset.x += SPEED * delta
