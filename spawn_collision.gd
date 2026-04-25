extends Node2D


@onready var collision_shape_2d: CollisionShape2D = $Area2D/CollisionShape2D
#@onready var bubble: Bubble = $"."
@onready var bubblearea: Node2D = get_node("/root/global")

const BUBBLE = preload("uid://cn0i1fmjxmy0q")
var hadspawnedbb = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass



func _on_area_2d_area_entered(_area: Area2D):
	if _area.is_in_group("droppable1") and !hadspawnedbb:
		var _scrub_appear = BUBBLE.instantiate()
		add_child(_scrub_appear)
		print("Soaped!")
		hadspawnedbb = true
		bubblearea.set_deferred("Monitoring", false)
		
