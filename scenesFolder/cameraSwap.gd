extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _on_camera_a_pressed():
	get_parent().get_node("Cameras/CameraA/Camera2D").make_current()


func _on_camera_b_pressed():
	get_parent().get_node("Cameras/CameraB/Camera2D").make_current()


func _on_camera_c_pressed():
	get_parent().get_node("Cameras/CameraC/Camera2D").make_current()


func _on_camera_d_pressed():
	get_parent().get_node("Cameras/CameraD/Camera2D").make_current()


func _on_camera_e_pressed():
	get_parent().get_node("Cameras/CameraE/Camera2D").make_current()


func _on_camera_f_pressed():
	get_parent().get_node("Cameras/CameraF/Camera2D").make_current()


func _on_camera_g_pressed():
	get_parent().get_node("Cameras/CameraG/Camera2D").make_current()

func _on_home_pressed():
	get_parent().get_node("player/LobbyScene/LobbyPlayerCamera").make_current()
