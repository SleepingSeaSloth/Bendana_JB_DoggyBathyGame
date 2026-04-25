extends Node2D
class_name Bubble

@onready var game_manager: GameManager = %GameManager






#remove bubbles
func _on_area_2d_area_entered(_area: Area2D) -> void:
	if _area.is_in_group("droppable2"):
		game_manager.bathing()
		print("washed")
		queue_free()
