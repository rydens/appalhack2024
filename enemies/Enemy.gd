class_name Enemy extends Node2D

@export var Name: String
@export var LocationPaths: Array[NodePath]
@export var StartLocationPath: NodePath
@export var ChanceToMove: float

@onready var Locations: Array[Location] = loadLocationNodes(LocationPaths)
@onready var CurrentLocation = get_parent().get_node(StartLocationPath)
@onready var CurrentLocationIndex = Locations.find(CurrentLocation)


func loadLocationNodes(nodePaths: Array[NodePath]) -> Array[Location]:
	var nodes: Array[Location] = []
	for nodePath in nodePaths:
		var node = get_parent().get_node(nodePath)
		if node != null:
			nodes.append(node)
		else:
			print("couldn't load location " + String(nodePath))
	return nodes

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func onTimeStep():
	pass
	
func move():
	pass
