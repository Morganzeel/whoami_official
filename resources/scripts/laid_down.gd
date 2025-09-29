extends State

func Enter():
	%Phonenode.global_position.y += 100
	%Phonenode.set_visible(false)

func _input(event: InputEvent) -> void:
	if(Input.is_action_pressed("ui_up")):
		Transition.emit(self, "defaultscreen")

func Exit():
	%Phonenode.global_position.y -= 100
	%Phonenode.set_visible(true)
