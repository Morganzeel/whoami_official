extends State

func Enter():
	$"../../PhoneBackground".visible = true
	$"../../PanelContainer/AppsContainer".visible = true

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and $"../../PanelContainer/AppsContainer/MessageIcon".get_global_rect().has_point($"../../../../Camera2D".get_global_mouse_position()):
		Transition.emit(self, "textingapp")
	elif(Input.is_action_pressed("ui_down")):
		Transition.emit(self, "laiddown")

func Exit():
	$"../../PhoneBackground".visible = false
	$"../../PanelContainer/AppsContainer".visible = false
