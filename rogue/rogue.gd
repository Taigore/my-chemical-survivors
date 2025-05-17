class_name Rogue
extends Area2D

@export var speed : int = 350
@onready var _sprite = $RogueSprite
var move := Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_sprite.play("idle")
	
func _physics_process(delta: float) -> void:
	position += move.normalized() * speed * delta

func _process(_delta: float) -> void:
	move = Input.get_vector(
		"move_left",
		"move_right",
		"move_up",
		"move_down")
