extends CharacterBody2D


@export var move_speed : float = 500
@onready var interaction_area: InteractionArea = $InteractionArea
var char_direction : Vector2
const TEST_SCENE_FOR_MENUS = preload("uid://dwekfsan4qr5o")



const lines: Array[String] = [
	"Hey there!"
]

func _ready():
	interaction_area.interact = Callable(self, "_dog_tub")

func _dog_tub():
	get_tree().change_scene_to_packed(TEST_SCENE_FOR_MENUS)


func _physics_process(_delta):
	char_direction.x = Input.get_axis("move_left", "move_right")
	char_direction.y = Input.get_axis("move_down", "move_up")
	char_direction = char_direction.normalized()
	
	#flip
	
	#if char_direction.x > 0: %BatherSprite.flip_h = false
	#elif %BatherSprite.animation != "Walking": %sprite.animation = "Walking"
	#
	if char_direction:
		velocity = char_direction * move_speed
		#if %BatherSprite.animation != "Walking": %BatherSprite.animation = "Walking"
	else:
		velocity = velocity.move_toward(Vector2.ZERO, move_speed)
		#if %sprite.animation != "Idle": %BatherSprite.animation = "Idle"
		#
	move_and_slide()
