extends Node

var incorrect = 0
#var questions
var questionplace = 0

#door variables
var rightDoorClosed = false
var leftDoorClosed = false

#power variable
var power = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	if(leftDoorClosed == true || rightDoorClosed == true):
#		while(leftDoorClosed == true || rightDoorClosed == true): #while left door is closed
#			await get_tree().create_timer(1).timeout
#			Global.power = Global.power - 1
			
func _doorpower():
	#really finicky code to open both doors then immediately close again if supposed to be (doesn't work)
	#		if ((leftDoorClosed == true) && (rightDoorClosed == true)):
	#			leftDoorClosed = false
	#			rightDoorClosed = false
	#			leftDoorClosed = true
	#			rightDoorClosed = true
	#		elif((leftDoorClosed == true) && (rightDoorClosed == false)):
	#			leftDoorClosed = false
	#			leftDoorClosed = true
	#		elif((leftDoorClosed == false) && (rightDoorClosed == true)):
	#			rightDoorClosed = false
	#			rightDoorClosed = true
	if(leftDoorClosed == true || rightDoorClosed == true):
		while(leftDoorClosed == true && rightDoorClosed == true): #while both doors closed
			await get_tree().create_timer(2).timeout
			if (Global.power > 0):
				Global.power = Global.power - 1
		while (leftDoorClosed == true && rightDoorClosed == false): #while only left closed
			await get_tree().create_timer(1).timeout
			if (Global.power > 0):
				Global.power = Global.power - 1
		while (leftDoorClosed == false && rightDoorClosed == true): #while only right closed
			await get_tree().create_timer(1).timeout
			if (Global.power > 0):
				Global.power = Global.power - 1

