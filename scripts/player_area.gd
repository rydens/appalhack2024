extends Sprite2D

var scene_list = {}
var location_list = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	var cas = get_node("CharacterAreaScene")
	scene_list["z"] = cas
	
	location_list["Fenwick"] = "Fenwick's office"
	location_list["Norris"] = "Norris' office"
	location_list["Swanson"] = "Swanson's office"
	location_list["Poki"] = scene_list["c"]
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _update_locations():
	for character in location_list.keys:
		var location = location_list[character]
		if (location is Node2D):
			# going to use the location's bool variable to indicate whether or 
			# the character is there
			# child node scenes are responsible for setting 
			# the bool variable to false
			_do_nothing()
			
func _do_nothing():
	pass
