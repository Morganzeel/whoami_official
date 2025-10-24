extends State

func Enter():
	%DisplayOver.visible = true
	%QuestBoard.visible = true

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		Transition.emit(self, "roomstate")
	
func Exit():
	%DisplayOver.visible = false
	%QuestBoard.visible = false
