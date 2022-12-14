extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var ball_y = get_parent().get_node("ball").position.y
	if (ball_y - position.y) > 2:
		position.y += 200 * delta
	elif (ball_y - position.y) < -2:
		position.y -= 200 * delta

