extends Node2D

func _ready():
	$AnimationPlayer.play("idle")

func _on_area_2d_body_entered(body):
	if body.is_in_group("Player"):
		body.player_ui.add_coin()
		queue_free()
