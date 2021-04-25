extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():
	EventBus.connect("coin_pickup", self, "_coin_pickup")
	EventBus.connect("enemy_hit", self, "_enemy_hit")
	pass # Replace with function body.

	
func _process(delta):
	if (GameState.score < 0):
		GameState.score = 0
	
	$ScoreLabel.text = "Score: %d" % GameState.score
	$LivesLabel.text = "Lives: %d" % GameState.lives
	
func _coin_pickup():
	GameState.score += 20

func _enemy_hit():
	GameState.lives -= 1
	if (GameState.lives <= 0):
		EventBus.emit_signal("game_over")
		pass
	pass
