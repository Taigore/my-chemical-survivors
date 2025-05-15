class_name EnemySpider
extends Area2D

@export var speed = 1.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var player := get_tree().get_first_node_in_group("player")
	var target : Vector2 = player.position
	var distance = target - position
	var direction = distance.normalized()
	var deltaOffset = delta * speed * direction
	position += deltaOffset
