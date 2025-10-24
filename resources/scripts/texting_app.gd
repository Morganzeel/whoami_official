extends State

var textingappinstance = load("res://resources/scenes/texting_app.tscn")
var textingapp = textingappinstance.instantiate()

func Enter():
	%DisplayScreen.add_child(textingapp)
	
	
func _input(event: InputEvent) -> void:
	if(Input.is_action_pressed("ui_down")):
		Transition.emit(self, "laiddown")
		
func Exit():
	%DisplayScreen.remove_child(textingapp)
	
