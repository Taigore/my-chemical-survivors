extends Node

@onready var _char = $Rogue
@onready var _viewport = get_viewport()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_char.position = _viewport.get_visible_rect().size / 2
	$EnemySpider.player = _char

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	$Background.material.set_shader_parameter("offset", _char.offset)
	$EnemySpider.position = _char.position - _char.offset + $EnemySpider.offset
