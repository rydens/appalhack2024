extends Node2D

signal time_step()
var game_time = Timer.new()	

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

func _time_step():
	Fenwick = get_node("res://enemies/FenwickEnemy.gd")
	Fenwick.
	
	
	
