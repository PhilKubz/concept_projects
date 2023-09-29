extends RigidBody2D


@export var enemy_speed = 250
var player : Player

func ready():
	print("Hello from the enemy ready script")
	print(player.player_position)

func _physics_process(delta):
	if player != null:
		var direction = (player.player_position - position).normalized()
		linear_velocity = direction * enemy_speed * delta
		print(linear_velocity)
