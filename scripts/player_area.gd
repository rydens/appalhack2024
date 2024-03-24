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
var game_time = Timer.new()
var power = 100
var left_door_open = true
var right_door_open = true
var left_light_off = true
var right_light_off = true

# Called when the node enters the scene tree for the first time.
func _ready():
	var cas = get_node("CharacterAreaScene")
	scene_list["z"] = cas
	game_time.start(300) # 5 min

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
	for character in travel_positions.keys:
		travel_positions[character] = \
			(travel_positions[character] + 1) % travels[character].length
	_update_locations()
	var win = game_time.is_stopped()
	var loss = _check_loss()
	pass
			
func _do_nothing():
	pass

func _check_win():
	pass
	
func _check_loss():
	pass
	
func _close_left_door():
	# make door visible
	left_door_open = false
	while (!left_door_open):
		await get_tree().create_timer(1.0).timeout
		power = power - 0.25
		if (power < 0):
			_do_nothing()		
	
func _close_right_door():
	# make door visible
	right_door_open = false
	while (!right_door_open):
		await get_tree().create_timer(1.0).timeout
		power = power - 0.25
		if (power < 0):
			_do_nothing()		
	
func _open_left_door():
	left_door_open = true
	# make door invisible
	
func _open_right_door():
	right_door_open = true
	# make door invisible
	
func _turn_on_left_light():
	left_light_off = false
	while (!left_light_off):
		await get_tree().create_timer(1.0).timeout
		power = power - 0.25
		if (power < 0):
			_do_nothing()		
	
func _turn_on_right_light():
	right_light_off = false
	while (!right_light_off):
		await get_tree().create_timer(1.0).timeout
		power = power - 0.25
		if (power < 0):
			_do_nothing()		
	
func _turn_off_left_light():
	left_light_off = true
	
func _turn_off_right_light():
	right_light_off = true
	
