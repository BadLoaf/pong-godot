extends Node

func _ready():
	pass # Replace with function body.

func game_over():
	$PlayerPaddle.hide()
	get_tree().call_group("ai_group", "queue_free")
	get_tree().call_group("ballz", "queue_free")
	yield($Menu/MessageTimer, "timeout")
	$Menu/Message.hide()
	$Menu/StartMenu.show()

func _on_Menu_start_game():
	var ball = ResourceLoader.load('res://tscn/ball.tscn').instance()
	ball.position = $BallPosition.position
	add_child_below_node($Menu, ball)
	
	$PlayerPaddle.show()
	
	var AI  = ResourceLoader.load('res://tscn/AI.tscn').instance()
	AI.position = $AIPosition.position
	add_child_below_node($Menu, AI)
	

func _on_LoseArea_area_entered(area):
	$Menu.show_message('You Lose!')
	$LoseSound.play()
	game_over()

func _on_WinArea_area_entered(area):
	$Menu.show_message('You Win!')
	$WinSound.play()
	game_over()
