extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	if(Global.rightDoorClosed == false):
		Global.rightDoorClosed = true
		print("doors are now closed")
		Global._doorpower()
	elif(Global.rightDoorClosed == true):
		Global.rightDoorClosed = false
		print("doors are now open")
	#Global._doorpower()
