extends Control

func _input(event):
	if(Input.is_action_pressed("ui_cancel")):
		get_tree().change_scene_to_file("res://resources/scenes/game.tscn")
