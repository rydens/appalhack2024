extends Enemy

signal SwansonKill


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass



func onTimeStep():
	if randf() <= ChanceToMove:
		move()
		
func move():
	# if Swanson is at the door, but homework ISNT done, and door is OPEN, KILL
	if !Global.leftDoorClosed && CurrentLocation == Locations[-1] && !Global.homeworkdone:
		# KILL
		SwansonKill.emit()
	else:
		Locations[CurrentLocationIndex].Occupant = get_parent().get_node("NullEnemy")
		CurrentLocationIndex += 1
		CurrentLocation = Locations[CurrentLocationIndex]
		Locations[CurrentLocationIndex].Occupant = self
