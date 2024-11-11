class_name PlayerUI extends Control

@onready var label: Label = $HBoxContainer/Label
var coins : int = 0

func update_health(current: float, max: float):
	$ProgressBar.value = current / max

func add_coin():
	coins += 1
	label.text = str(coins)
