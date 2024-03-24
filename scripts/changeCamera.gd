extends Node
#test maybe delete?

func _on_show_cameras_pressed():
	get_tree().change_scene_to_file("res://scenesFolder/camera_interface.tscn")
	
