class_name Camera extends Node2D

@onready var VisibleLocations: Array[Location] = get_location_children()

func get_location_children() -> Array[Location]:
	var nodes: Array[Location] = []
	for child in get_children():
		if child is Location:
			nodes.append(child as Location)
	return nodes

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	onTimeStep()


func _on_show_cameras_pressed():
	get_parent().get_parent().get_node("cameraInterface/Camera2D").make_current()

func onTimeStep():
	for location in VisibleLocations:
		location.Occupant.position = location.position
