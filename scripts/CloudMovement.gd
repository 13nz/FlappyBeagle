extends ParallaxLayer
export(float) var CLOUD_SPEED = -15

func _process(delta):
	self.motion_offset.x += CLOUD_SPEED * delta
