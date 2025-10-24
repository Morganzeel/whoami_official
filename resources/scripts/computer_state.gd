extends State

func Enter():
	%DisplayOver.visible = true
	%Computer.visible = true


func _on_computer_shut_down() -> void:
	Transition.emit(self, "roomstate")

func Exit():
	%DisplayOver.visible = false
	%Computer.visible = false
