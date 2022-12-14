extends Area2D

export var speed = 200
var velocity_vector = Vector2(speed,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocity_vector.rotated(rotation) * delta
	if position.y < 8 or position.y > 592:
		velocity_vector.y = -velocity_vector.y


func _on_ball_body_entered(body):
	velocity_vector.x = -velocity_vector.x
	velocity_vector.y += 200 * (Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up"))
	$Bounce.play()

func _on_Area2D_area_entered(area):
	get_parent().get_node("Win").popup_centered()
	get_parent().get_node("WinArea/AudioStreamPlayer").play()


func _on_Area2D2_area_entered(area):
	get_parent().get_node("Lose").popup_centered()
	get_parent().get_node("LoseArea/AudioStreamPlayer").play()
