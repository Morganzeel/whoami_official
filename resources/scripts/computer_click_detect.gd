extends ColorRect


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and $".".get_global_rect().has_point($"../Camera2D".get_global_mouse_position()):
		get_tree().change_scene_to_file("res://resources/scenes/computer.tscn")
	else:
		pass
