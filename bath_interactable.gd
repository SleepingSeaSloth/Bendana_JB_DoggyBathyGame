extends Node2D


@onready var interaction_area = $InteractionArea
const TEST_SCENE_FOR_MENUS = preload("uid://dwekfsan4qr5o")


# Called when the node enters the scene tree for the first time.
func _ready():
	interaction_area.interact = Callable(self, "_dog_tub")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _dog_tub():
	get_tree().change_scene_to_packed(TEST_SCENE_FOR_MENUS)
