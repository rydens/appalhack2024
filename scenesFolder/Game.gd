extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$PokiTimer.start()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_poki_timer_timeout():
	$AudioStreamPlayer2D.play()
	$PokiTimer.stop()
	pass # Replace with function body.
