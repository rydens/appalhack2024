extends Node2D

signal ti
+me_step

var time = Timer.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Game ready")
	for i in range(60):
		while ( !timer.is_stopped):
			foo = ""
		time_step.emit()
		time.start(5)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

#func time_step():
	
