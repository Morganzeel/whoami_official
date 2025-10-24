extends State

signal TabProcess
var shodowntexture = load("res://textures/shodown.png")
var shodowninstance = load("res://resources/scenes/ShoDown.tscn")
var shodownscene = shodowninstance.instantiate()
	
func Enter():
	TabProcess.emit()
	%TaskBar/shodowntab/%ProgramIcon.texture = shodowntexture
	%ComputerDesktop.add_child(shodownscene)
	
	
func _input(event):
	if(Input.is_action_pressed("ui_cancel")):
		Transition.emit(self, "desktop")

func Exit():
	%ComputerDesktop.remove_child(shodownscene)
