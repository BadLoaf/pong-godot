extends CanvasLayer

signal start_game

func show_message(text):
	$Message.text = text
	$Message.show()
	$MessageTimer.start()

func game_over(result):
	show_message(result)
	yield($MessageTimer, "timeout")
	
	$StartMenu.show()
	

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventKey:
		if event.pressed:
			if $StartMenu.is_visible_in_tree():
				emit_signal("start_game")
				$StartMenu.hide()
