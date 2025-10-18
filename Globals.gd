extends Node

var month = 11
var day = 14
var DayNameTracker = 0

func has_child_with_name(parent_node: Node, child_name: String) -> bool:
	for child in parent_node.get_children():
		if child.name == child_name:
			return true
	return false
