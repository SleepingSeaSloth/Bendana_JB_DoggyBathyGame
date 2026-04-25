class_name GameManager
extends Node

var cleaned : = 0

@onready var BathingTracker: Label = $CanvasLayer/Panel/BathingCounter
const DOG_CLEANED_MENU = preload("uid://b2bmfmqyyfvsb")


func bathing() -> void:
	cleaned += 1
	BathingTracker.text = str(cleaned)
	
	
func _process(_delta: float) -> void:
	if cleaned == 10:
		get_tree().change_scene_to_packed(DOG_CLEANED_MENU)
		
