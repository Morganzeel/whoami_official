extends Control

var days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
var year = 0
@onready var month = 11
@onready var day = 14
@onready var DateNum = %DateNum
@onready var DayName = %DayName

func _ready():
	DayName.text = str(days[0])
	DateNum.text = str("Date: " + str(day) + "/" + str(month))
