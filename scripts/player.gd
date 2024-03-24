extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_show_cameras_pressed():
	get_parent().get_node("cameraInterface/Camera2D").make_current()

func _on_show_homework_pressed():
	get_tree().change_scene_to_file("res://scenesFolder/homework.tscn")



func _on_poki_enemy_poki_kill():
	get_tree().change_scene_to_file("res://scenesFolder/startScreen.tscn")



func _on_swanson_enemy_swanson_kill():
	get_tree().change_scene_to_file("res://scenesFolder/startScreen.tscn")
