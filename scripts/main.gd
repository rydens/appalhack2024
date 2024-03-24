extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	new_game()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func new_game():
	get_tree().change_scene_to_file("res://scenesFolder/startScreen.tscn")

func game_over():
	$GameTimer.stop()
