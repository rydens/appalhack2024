extends Camera2D

@export var velocity = 1500

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var viewwidth = get_window().size.x / 4
	var mpos = get_viewport().get_mouse_position().x
	
	if mpos < viewwidth && (position.x - (viewwidth * 2) > limit_left):
		var acceleration = 1 - mpos / viewwidth
		position.x -= velocity * delta * acceleration
	elif mpos > viewwidth * 3 && (position.x + (viewwidth * 2) < limit_right):
		var acceleration = (mpos - viewwidth * 3) / viewwidth
		position.x += velocity * delta * acceleration
	#print(position)
