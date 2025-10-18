extends State

func Enter():
	pass

func _on_sho_down_icon_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		Transition.emit(self, "shodown")
		

func _on_power_button_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		get_tree().change_scene_to_file("res://resources/scenes/game.tscn")
