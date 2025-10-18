extends MarginContainer

signal QuestCompletion

func _on_texture_rect_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		print("test")
		QuestCompletion.emit()
