extends Control

signal ShutDown

func _on_power_button_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		ShutDown.emit()
