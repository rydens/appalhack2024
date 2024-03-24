extends Node2D

var pokihere = true
var poki = null
var parent = null

# Called when the node enters the scene tree for the first time.
func _ready():
	#var button = Button.new()
	var button = get_node("eraser")
	button.text = "Click me"
	button.pressed.connect(self._button_pressed)
	add_child(button)
	poki = get_node("Poki")

func _button_pressed():
	pokihere = false
	parent = get_parent()
	parent.location_list["Poki"] = parent.scene_list["c"]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(pokihere):
		poki.visible = true
	else:
		poki.visible = false
	
		
	
	
