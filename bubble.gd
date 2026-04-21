extends Node2D
class_name Bubble






#remove bubbles
func _on_area_2d_area_entered(_area: Area2D) -> void:
	if _area.is_in_group("droppable2"):
		print("washed")
		queue_free()
