extends Node

@export var parent : Node2D
@export var max_health : float = 100.0
var current_health : float = 0.0

@export var ui : PlayerUI

func _ready():
	current_health = max_health

func get_damage(damage: float):
	current_health -= damage
	
	if ui:
		ui.update_health(current_health, max_health)
	
	if current_health <= 0:
		parent.queue_free()
