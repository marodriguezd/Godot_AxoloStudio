extends CharacterBody2D

@onready var animation: AnimationPlayer = $Animation

func _ready():
	animation.play("idle")

func _on_area_2d_body_entered(body: Node2D) -> void:
	#print(body.name)
	#if body != self:
	if body.is_in_group("Player"):
		#print("Hacer daño al jugador")
		body.health_component.get_damage(25)
