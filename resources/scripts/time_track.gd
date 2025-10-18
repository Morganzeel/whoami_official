extends Control

var days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
@onready var DateNum = %DateNum
@onready var DayName = %DayName

func _ready():
	DayName.text = str(days[Globals.DayNameTracker])
	DateNum.text = str("Date: " + str(Globals.day) + "/" + str(Globals.month))

func _on_sleep_icon_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		if (Globals.day < 31) and (Globals.month == 4 or Globals.month == 6 or Globals.month == 9 or Globals.month == 11):
				Globals.day = Globals.day + 1
		elif (Globals.day < 30):
			Globals.day = Globals.day +1
		else:
			Globals.month = Globals.month + 1
			if (Globals.month > 12):
				Globals.month = 1
			Globals.day = 1
		update_day_tracker()
		update_time()

func update_day_tracker():
	if(Globals.DayNameTracker == 6):
		Globals.DayNameTracker = 0
	else:
		Globals.DayNameTracker = Globals.DayNameTracker + 1

func update_time():
	DayName.text = str(days[Globals.DayNameTracker])
	DateNum.text = str("Date: " + str(Globals.day) + "/" + str(Globals.month))
