extends State


func _input(event: InputEvent) -> void:
	if(Input.is_action_pressed("ui_down")):
		Transition.emit(self, "laiddown")


func _on_message_icon_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		Transition.emit(self, "textingapp")
