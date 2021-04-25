extends Area2D

var map_speed = 1

func _process(delta):
	translate(Vector2(0, -GameState.map_speed))
	if (position.y < -1080-500):
		print(position.y)
		queue_free()


func _on_Enemy_body_entered(body):
	if body.name == "Player":
		EventBus.emit_signal("enemy_hit")
		get_tree().queue_delete(self)
