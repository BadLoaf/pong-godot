extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var move_vector = Vector2(0, Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up"))
	move_and_slide(move_vector * speed)

