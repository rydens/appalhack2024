@icon("res://assets/fenwick.jpg")
class_name cameraAbstract
extends Node

# hold positions for camera
var visibleLocations = []

# Called when the node enters the scene tree for the first time.
func _ready():
	for locations in visibleLocations:
		# Check Occupants
		if(locations.occupant != null):
			locations.occupant.position = locations.position #change occupants position to locations position
			locations.occupant.display() #display character


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

