extends HBoxContainer

var tabinstance = load("res://resources/scenes/tab_template.tscn")
var tab = tabinstance.instantiate()

func _on_sho_down_tab_process() -> void:
	if (Globals.has_child_with_name(%TaskBar, "shodowntab") == false):
		%TaskBar.add_child(tab)
		tab.name = "shodowntab"
	else:
		pass
