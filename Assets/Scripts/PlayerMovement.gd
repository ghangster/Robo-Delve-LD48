extends Node2D

var speed = 100

onready var rb : RigidBody2D = $RigidBody2D


func _ready():
	
	pass


func get_input():
	if Input.is_action_pressed("right"):
		rb.add_central_force(Vector2.RIGHT * speed)
	if Input.is_action_pressed("left"):
		rb.add_central_force(Vector2.LEFT * speed)
	if Input.is_action_pressed("down"):
		pass
	if Input.is_action_pressed("up"):
		pass
		

func _process(delta):
	get_input();
