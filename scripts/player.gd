extends Node2D

var left_light_on = false
var right_light_on = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var buttonL = get_node("LobbyScene/leftLightSwitch")
	var buttonR = get_node("LobbyScene/rightLightSwitch")
	if (buttonL.is_pressed()):
		if( !left_light_on):
			get_node("LobbyScene/leftLight").visible = true
			left_light_on = true
		else:
			get_node("LobbyScene/leftLight").visible = false
			get_node("LobbyScene/rightLight").visible = false
			left_light_on = false
	if (buttonR.is_pressed()):
		if(!right_light_on):
			get_node("LobbyScene/rightLight").visible = true
			right_light_on = true
		else:
			get_node("LobbyScene/leftLight").visible = false
			get_node("LobbyScene/rightLight").visible = false
			right_light_on = false
		

func _on_show_cameras_pressed():
	get_tree().change_scene_to_file("res://scenesFolder/camera_interface.tscn")

