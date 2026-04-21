extends Node2D



const BUBBLE = preload("uid://cn0i1fmjxmy0q")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass



func _on_area_2d_area_entered(_area: Area2D):
	if _area.is_in_group("droppable1"):
		var scrub_appear = BUBBLE.instantiate()
		add_child(scrub_appear)
