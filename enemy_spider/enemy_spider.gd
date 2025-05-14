class_name EnemySpider
extends Area2D

@export var speed = 1.0
@export_storage var player : Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var target : Vector2 = player.position
	var distance = target - position
	var direction = distance.normalized()
	var deltaOffset = delta * speed * direction
	position += deltaOffset
