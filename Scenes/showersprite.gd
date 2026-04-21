extends Sprite2D


var dragging = false
var ofS = Vector2(0,0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float):
	if dragging:
		position = get_global_mouse_position() - ofS




func _on_button_button_up():
	print("pressed")
	dragging = true
	ofS = get_global_mouse_position() - global_position


func _on_button_button_down():
	dragging = false
