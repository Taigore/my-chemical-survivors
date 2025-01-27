extends Area2D

@export var speed : int = 350
@onready var _sprite = $RogueSprite

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_sprite.play("idle")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var move = Vector2.ZERO
	
	if Input.is_action_pressed("move_up"):
		move += Vector2.UP
	if Input.is_action_pressed("move_down"):
		move += Vector2.DOWN
	if Input.is_action_pressed("move_right"):
		move += Vector2.RIGHT
	if Input.is_action_pressed("move_left"):
		move += Vector2.LEFT
	
	position += move.normalized() * speed * delta
