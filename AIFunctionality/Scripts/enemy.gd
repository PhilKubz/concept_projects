extends RigidBody2D


@export var enemy_speed = 250
@onready var player = get_node("res://Scenes/player.tscn")

var velocity = Vector2.ZERO

func ready():
	pass

func _physics_process(delta):
	if player != null:
		var direction = (player.player_position - position).normalized()
		print(direction)
		linear_velocity = direction * enemy_speed * delta
		print(linear_velocity)
	else:
		pass


func _on_body_entered(body):
	print(body)
