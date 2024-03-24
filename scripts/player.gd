extends Node2D
var camera = null
var mousePosition = null
var ogCamPosition = null

# Called when the node enters the scene tree for the first time.
func _ready():
	camera = get_node("CameraLobby/PlayerCamera")
	mousePosition = get_global_mouse_position();
	ogCamPosition = camera.position
	
	
	# print(cameraPosition)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	mousePosition = get_global_mouse_position()
	camera.position = mousePosition
	

	

func _on_show_cameras_pressed():
	get_tree().change_scene_to_file("res://scenesFolder/camera_interface.tscn")
