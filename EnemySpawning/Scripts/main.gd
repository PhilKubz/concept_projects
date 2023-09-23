extends Node2D

@onready var spawn_count : int = 10

var enemy_scene = preload("res://Scenes/enemy.tscn")

func _ready():
	spawn_enemy()
	

func spawn_enemy():
	for i in spawn_count:
		var enemy = enemy_scene.instantiate()
		var enemy_size = randf_range(0.2, 1.0)
		
		add_child(enemy)
		enemy.position.x = randi_range(0, 1120)
		enemy.position.y = randi_range(30, 615)
		enemy.scale.x = enemy_size
		enemy.scale.y = enemy_size
