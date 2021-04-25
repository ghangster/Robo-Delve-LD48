extends RigidBody2D

var speed = 1


func _ready():
	
	pass


func get_input():
	if Input.is_action_pressed("right"):
		apply_central_impulse(Vector2.RIGHT * speed)
	if Input.is_action_pressed("left"):
		apply_central_impulse(Vector2.LEFT * speed)
	if Input.is_action_pressed("down"):
		pass
	if Input.is_action_pressed("up"):
		pass
		

func _process(delta):
	get_input()
