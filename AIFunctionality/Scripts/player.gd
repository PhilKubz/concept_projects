extends CharacterBody2D

class_name Player

@export var move_speed = 40000
var player_position = Vector2.ZERO

func ready():
	print("player script loaded:")

func _physics_process(delta):
	var screen_size = get_viewport_rect().size
	var input_vector = Vector2.ZERO
	
	global_position = global_position.clamp(Vector2(0, 0), screen_size)
	velocity = Vector2(move_speed, move_speed) * delta
	var player_position = global_position
	
	if Input.is_action_pressed("move_left"):
		input_vector.x = -move_speed
	if Input.is_action_pressed("move_right"):
		input_vector.x = move_speed
	if Input.is_action_pressed("move_up"):
		input_vector.y = -move_speed
	if Input.is_action_pressed("move_down"):
		input_vector.y = move_speed
	
	velocity = input_vector.normalized() * (move_speed * delta)
	move_and_slide()
