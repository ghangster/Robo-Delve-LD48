extends StaticBody2D



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	translate(Vector2(0, -GameState.map_speed))
	if (position.y < -1080-500):
		print(position.y)
		queue_free()
	pass
