extends Sprite2D

var scene_list = {}
var travels = {
	"poki":[],
	"Fenwick":[],
	"Norris":[],
	"Swanson":[]
}

var travel_positions = {
	"poki": 0,
	"Fenwick": 0,
	"Norris": 0,
	"Swanson": 0
}

# Called when the node enters the scene tree for the first time.
func _ready():
	var cas = get_node("CharacterAreaScene")
	scene_list["z"] = cas
	
	#location_list["Fenwick"] = "Fenwick's office"
	#location_list["Norris"] = "Norris' office"
	#location_list["Swanson"] = "Swanson's office"
	#location_list["Poki"] = scene_list["c"]
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _update_locations():
	for character in travels.keys:
		var location = travels[character][travel_positions[character]]
		if (location in scene_list):
			# going to use the location's bool variable to indicate whether or 
			# the character is there
			# child node scenes are responsible for setting 
			# the bool variable to false
			_do_nothing()
			
func _move_time_forward():
	
	pass
			
func _do_nothing():
	pass
