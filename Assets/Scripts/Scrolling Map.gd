extends Node2D



var chunk_resource = preload("res://Assets/Prefabs/Chunk.tscn")

var chunk1 = chunk_resource.instance()
var chunk2 = chunk_resource.instance()



# Called when the node enters the scene tree for the first time.
func _ready():
	add_child(chunk1)
	chunk2.translate(Vector2(0, 1080))
	add_child(chunk2)
	
	pass



func _process(delta):
	translate(Vector2(0, -GameState.map_speed))
	if (position.y < -1080):
		position.y += 1080
	
	
	pass
