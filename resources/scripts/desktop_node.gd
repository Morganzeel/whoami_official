extends State

signal ShutDown

func Enter():
	pass

func _on_sho_down_icon_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		Transition.emit(self, "shodown")
		
