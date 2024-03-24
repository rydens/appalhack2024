extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	if(Global.leftDoorClosed == false):
		Global.leftDoorClosed = true
		print("left doors are now closed")
		Global._doorpower()
		
	elif(Global.leftDoorClosed == true):
		Global.leftDoorClosed = false
		print("left doors are now open")
	#Global._doorpower()

