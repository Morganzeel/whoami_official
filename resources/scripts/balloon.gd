extends Control

@export var dialogue_resource: DialogueResource

@onready var scroll: ScrollContainer = %Scroll
@onready var v_scroll_bar: VScrollBar = %VScrollBar
@onready var content: VBoxContainer = %Content
@onready var dialogue_box: DialogueBox = %DialogueBox

#region Hooks


func _ready() -> void:
	dialogue_box.dialogue_line = await dialogue_resource.get_next_dialogue_line("start", [self])
	dialogue_box.grab_focus()
	scroll.get_v_scroll_bar().share(v_scroll_bar)


#endregion

#region Mutations

#endregion

#region Helpers


func next_line(next_id: String) -> void:
	print("Moving to next line: ", next_id)
	var next_dialogue_line: DialogueLine = await dialogue_resource.get_next_dialogue_line(next_id, [self])
	
	if not is_instance_valid(next_dialogue_line): return
	
	var copy: DialogueBox = dialogue_box.duplicate()
	content.add_child(copy)
	content.move_child(copy, dialogue_box.get_index())
	dialogue_box.dialogue_line = next_dialogue_line

	await get_tree().create_timer(0.2).timeout
	scroll.set_deferred("scroll_vertical", 10000)

	dialogue_box.grab_focus()


func handle_click(event: InputEvent) -> void:
	var is_left_click: bool = event.is_pressed() and event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT
	var is_accept_key: bool = event.is_action_pressed("ui_accept")
	if is_left_click or is_accept_key:
		get_viewport().set_input_as_handled()
		if dialogue_box.is_typing:
			dialogue_box.skip_typing()
		else:
			next_line(dialogue_box.dialogue_line.next_id)


#endregion

#region Signals


func _on_gui_input(event: InputEvent) -> void:
	handle_click(event)


func _on_dialogue_box_gui_input(event: InputEvent) -> void:
	handle_click(event)

#endregion
