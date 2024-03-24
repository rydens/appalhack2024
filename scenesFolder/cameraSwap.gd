extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var textLable = get_node("powerPercentage")
	textLable.text = str(Global.power) + "%"
	
func _process(delta):
	var textLable = get_node("powerPercentage")
	textLable.text = str(Global.power) + "%"
	
	
func _on_camera_a_pressed():
	get_tree().change_scene_to_file("res://scenesFolder/cameras/camera_a.tscn")


func _on_camera_b_pressed():
	get_tree().change_scene_to_file("res://scenesFolder/cameras/camera_b.tscn")


func _on_camera_c_pressed():
	get_tree().change_scene_to_file("res://scenesFolder/cameras/camera_c.tscn")


func _on_camera_d_pressed():
	get_tree().change_scene_to_file("res://scenesFolder/cameras/camera_d.tscn")


func _on_camera_e_pressed():
	get_tree().change_scene_to_file("res://scenesFolder/cameras/camera_e.tscn")


func _on_camera_f_pressed():
	get_tree().change_scene_to_file("res://scenesFolder/cameras/camera_f.tscn")


func _on_camera_g_pressed():
	get_tree().change_scene_to_file("res://scenesFolder/cameras/camera_g.tscn")

func _on_home_pressed():
	get_tree().change_scene_to_file("res://scenesFolder/lobbyScene.tscn")
