extends State

func _on_computer_click_detect_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		Transition.emit(self, "computerstate")


func _on_time_track_quest_board_state() -> void:
	Transition.emit(self, "questboardstate")
