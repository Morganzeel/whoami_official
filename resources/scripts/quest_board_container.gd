extends VBoxContainer

@export var QuestInstance = load("res://resources/scenes/request_template.tscn")

func _on_request_template_quest_completion() -> void:
	print("test2")
