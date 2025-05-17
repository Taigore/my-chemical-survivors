class_name EnemySpider
extends Area2D

@export var speed = 1.0
@onready var player: Rogue = get_tree().get_first_node_in_group("player")

func _physics_process(delta: float) -> void:
	position = position.move_toward(player.position, speed * delta)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	player = get_tree().get_first_node_in_group("player")
