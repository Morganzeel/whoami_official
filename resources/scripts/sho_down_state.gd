extends State

var shodowntexture = load("res://textures/shodown.png")
var tabinstance = load("res://resources/scenes/tab_template.tscn")
var tab = tabinstance.instantiate()
var shodowninstance = load("res://resources/scenes/ShoDown.tscn")
var shodownscene = shodowninstance.instantiate()

func TabSetup():
	if (Globals.has_child_with_name(%Tabs, "shodowntab") == false):
		%Tabs.add_child(tab)
		tab.name = "shodowntab"
	else:
		pass
	
func Enter():
	TabSetup()
	%ComputerDesktop.add_child(shodownscene)
	
	
func _input(event):
	if(Input.is_action_pressed("ui_cancel")):
		Transition.emit(self, "desktop")

func Exit():
	%ComputerDesktop.remove_child(shodownscene)
