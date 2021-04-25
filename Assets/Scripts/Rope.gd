extends DampedSpringJoint2D


var rope_speed = 1.5

var start_length
var cur_length
var cur_rotation
var cur_scale : float

onready var base : StaticBody2D = get_node(node_a)
onready var player : RigidBody2D = get_node(node_b)


# Called when the node enters the scene tree for the first time.
func _ready():
	start_length =  (base.position - player.position).length()
	cur_length = start_length
	cur_scale = 1.0
	cur_rotation = 0
	
	pass # Replace with function body.

func get_input():
	if Input.is_action_pressed("right"):
		pass
	if Input.is_action_pressed("left"):
		pass
	if Input.is_action_pressed("down"):
		length += rope_speed
		rest_length += rope_speed
	if Input.is_action_pressed("up"):
		length -= rope_speed
		rest_length -= rope_speed
		
		
var log_timer = 0
		
func _process(delta):
	log_timer += delta
	get_input()
	var rope = base.position - player.position
	
	cur_length = rope.length()
	cur_scale = 1.0 * cur_length / start_length
	
	cur_rotation = -atan(rope.x / rope.y);
	update()
	
	log_timer = 0

func _draw():
	var rope_texture = preload("res://Assets/Textures/Rope.png")
	draw_set_transform(Vector2(0,0), cur_rotation, Vector2(cur_scale, cur_scale))
	draw_texture(rope_texture, Vector2(0,0))
	
