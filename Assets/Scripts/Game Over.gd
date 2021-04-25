extends Node2D


func _ready():
	$"Score".text = "Score: %d" % GameState.score 
	pass 
