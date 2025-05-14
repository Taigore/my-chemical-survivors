extends Node

@onready var _char = $Rogue

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$EnemySpider.player = _char

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	var bg := $Rogue/Background
	bg.material.set_shader_parameter("offset", $Rogue.position)
