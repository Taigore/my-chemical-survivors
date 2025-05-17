extends Path2D

@export var spawn_node: Node = null
@export var spawn_list: Array[PackedScene] = []

func _on_timer_spawn_timeout() -> void:
	if spawn_node == null:
		return
	if spawn_list.size() == 0:
		return
	
	var prefab: PackedScene = spawn_list.pick_random()
	var enemy: Node2D = prefab.instantiate()
	
	$%PositionSpawn.progress_ratio = randf()
	enemy.position = $%PositionSpawn.global_position
	
	spawn_node.add_child(enemy)
