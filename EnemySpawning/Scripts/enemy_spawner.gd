extends Node2D

signal enemy_spawned(enemy_instance)

#@onready var spawn_count : int = 10

var enemy_scene = preload("res://Scenes/enemy.tscn")

func _ready():
	pass

func spawn_enemy():
#	for i in spawn_count:
	var enemy_instance = enemy_scene.instantiate()
	var enemy_size = randf_range(0.2, 1.0)
		
	add_child(enemy_instance)
	enemy_instance.position.x = randi_range(20, 1100)
	enemy_instance.position.y = randi_range(30, 615)
	enemy_instance.scale.x = enemy_size
	enemy_instance.scale.y = enemy_size
	emit_signal("enemy_spawned", enemy_instance)


func _on_timer_timeout():
	spawn_enemy()
