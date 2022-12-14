extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed = 300
var velocity_vector = Vector2(speed,0)

# Called when the node enters the scene tree for the first time.
#func _ready():
#	velocity_vector = Vector2(200, 0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	position += velocity_vector.rotated(rotation) * delta
	pass

func _on_PongBall_body_entered(body):
#	speed = -speed
#	rotation = -rotation
	pass
