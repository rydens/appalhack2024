extends Enemy

signal PokiKill


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func onTimeStep():
	if randf() <= ChanceToMove:
		move()

func move():
	# if Poki is at the whiteboard, KILL
	if CurrentLocation == Locations[-1]:
		# KILL
		PokiKill.emit()
	else:
		Locations[CurrentLocationIndex].Occupant = get_parent().get_node("NullEnemy")
		CurrentLocationIndex += 1
		CurrentLocation = Locations[CurrentLocationIndex]
		Locations[CurrentLocationIndex].Occupant = self