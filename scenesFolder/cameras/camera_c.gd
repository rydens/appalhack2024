extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_show_cameras_pressed():
	get_parent().get_parent().get_node("cameraInterface/Camera2D").make_current()
