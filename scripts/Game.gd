extends Node2D

signal time_step

var time = Timer.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Game ready")
	for i in range(60):
		time.start(5)
		time_step.emit()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

#func time_step():
	
