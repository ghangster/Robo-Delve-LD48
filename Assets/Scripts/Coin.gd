extends Area2D




func _process(delta):
	translate(Vector2(0, -GameState.map_speed))
	if (position.y < -1080-500):
		print(position.y)
		queue_free()


func _on_Coin_body_entered(body):
	if body.name == "Player":
		EventBus.emit_signal("coin_pickup")
		get_tree().queue_delete(self)

