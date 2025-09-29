extends State

func Enter():
	$"../../TextAppBackground".visible = true
	$"../../PanelContainer/TextAppScroll".visible = true
	
func _input(event: InputEvent) -> void:
	if(Input.is_action_pressed("ui_down")):
		Transition.emit(self, "laiddown")
		
func Exit():
	$"../../TextAppBackground".visible = false
	$"../../PanelContainer/TextAppScroll".visible = false
