extends Node2D


onready var coin_resource = preload("res://Assets/Prefabs/Coin.tscn")
onready var enemy_resource = preload("res://Assets/Prefabs/Enemy.tscn")
onready var rock_resource = preload("res://Assets/Prefabs/Rock.tscn")


var spawn_range = Vector2(140, 1920-140)
var _coin_timer
var _enemy_timer
var _rock_timer


func _ready():
	randomize()
	_coin_timer = Timer.new()
	add_child(_coin_timer)

	_coin_timer.connect("timeout", self, "_on_coin_spawn")
	_coin_timer.set_wait_time(0.564)
	_coin_timer.set_one_shot(false) # Make sure it loops
	_coin_timer.start()
	
	_enemy_timer = Timer.new()
	add_child(_enemy_timer)

	_enemy_timer.connect("timeout", self, "_on_enemy_spawn")
	_enemy_timer.set_wait_time(1.648)
	_enemy_timer.set_one_shot(false) # Make sure it loops
	_enemy_timer.start()
	
	_rock_timer = Timer.new()
	add_child(_rock_timer)

	_rock_timer.connect("timeout", self, "_on_rock_spawn")
	_rock_timer.set_wait_time(1.428)
	_rock_timer.set_one_shot(false) # Make sure it loops
	_rock_timer.start()




func _update():
	
	pass

func _on_coin_spawn():
	var coin = coin_resource.instance()
	coin.position.x = rand_range(spawn_range.x, spawn_range.y)
	add_child(coin)
	
	
func _on_enemy_spawn():
	var enemy = enemy_resource.instance()
	enemy.position.x = rand_range(spawn_range.x, spawn_range.y)
	add_child(enemy)
	
func _on_rock_spawn():
	var rock = rock_resource.instance()
	
	rock.scale = Vector2(rand_range(0.5, 1.0), rand_range(0.5, 1.0))
	rock.position.x = rand_range(spawn_range.x, spawn_range.y)
	rock.rotation = rand_range(0, PI * 2)
	
	add_child(rock)
