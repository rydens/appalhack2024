extends Enemy

signal FenwickKill

var dir: bool


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func onTimeStep():
	if randf() <= ChanceToMove:
		dir = randf() <= 0.5
		move()
		
func move():
	if dir:
		move_ccw()
	else:
		move_cw()
		
func move_ccw():
	CurrentLocation.Occupant = get_parent().get_node("NullEnemy")
	if (CurrentLocationIndex > 0):
		CurrentLocationIndex -= 1
	Locations[CurrentLocationIndex].Occupant = self
	CurrentLocation = Locations[CurrentLocationIndex]
	
func move_cw():
	if CurrentLocationIndex == 11 && !Global.rightDoorClosed:
		FenwickKill.emit()
		return
	CurrentLocation.Occupant = get_parent().get_node("NullEnemey")
	if (CurrentLocationIndex < 11):
		CurrentLocationIndex += 1
	Locations[CurrentLocationIndex].Occupant = self
	CurrentLocation = Locations[CurrentLocationIndex]
