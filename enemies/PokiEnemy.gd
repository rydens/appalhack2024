extends Enemy

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	print("hello world")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(Locations[0].position.x)


func move():
	pass
