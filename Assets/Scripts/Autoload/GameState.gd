extends Node

var score = 0
var lives = 5
var map_speed = 0.5
var max_speed = 1

var map_speed_increment = 0.0001

var _map_timer

func _ready():
	pass 


func _process(delta):
	
	_map_timer = Timer.new()
	add_child(_map_timer)

	_map_timer.connect("timeout", self, "_on_apply_multiplier")
	_map_timer.set_wait_time(1.0)
	_map_timer.set_one_shot(false) # Make sure it loops
	_map_timer.start()
	
	pass

func _on_apply_multiplier():
	if (map_speed < max_speed):
		map_speed += map_speed_increment
