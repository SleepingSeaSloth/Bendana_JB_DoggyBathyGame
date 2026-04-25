extends Node2D
class_name dirt

@onready var game_manager: GameManager = %GameManager




#remove dirt
func _on_area_2d_area_entered(_area: Area2D) -> void:
	if _area.is_in_group("droppable2"):
		game_manager.bathing()
		print("scrubbed")
		queue_free()


#func clean():
	
