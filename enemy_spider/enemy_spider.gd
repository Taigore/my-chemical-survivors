extends Area2D

@export var offset = Vector2.ZERO
@export var speed = 1.0
@export_storage var player : Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var target : Vector2 = player.offset
	var distance = target - offset
	var direction = distance.normalized()
	var deltaOffset = delta * speed * direction
	offset += deltaOffset
