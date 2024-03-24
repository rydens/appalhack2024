extends Node2D

var incorrect
# Called when the node enters the scene tree for the first time.
var questions
#Amount of questions used

var questionplace = 0 #Question 1
#Save question position

func _ready():
	incorrect = 0 #keeps track of incorrect answers. get to 3 and game over
	questions = 10
	questionplace = 0 #Question 1
	_question()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _question():
	#$HomeworkQ.visible = true
	match questionplace:
		0:
			pass
		1:
			$HomeworkQ.set_texture(load("res://assets/Question2.png"))
		2:
			$HomeworkQ.set_texture(load("res://assets/Question3.png"))
		3:
			$HomeworkQ.set_texture(load("res://assets/Question4.png"))
		4:
			$HomeworkQ.set_texture(load("res://assets/Question5.png"))
		5:
			$HomeworkQ.set_texture(load("res://assets/Question6.png"))
		6:
			$HomeworkQ.set_texture(load("res://assets/Question7.png"))
		7:
			$HomeworkQ.set_texture(load("res://assets/Question8.png"))
		8:
			$HomeworkQ.set_texture(load("res://assets/Question9.png"))
		9:
			$HomeworkQ.set_texture(load("res://assets/Question10.png"))

func _incorrect():
	incorrect += 1
	#also call to swanson node to make him move

func _on_lobby_return_pressed():
	get_tree().change_scene_to_file("res://scenesFolder/lobbyScene.tscn")


func _on_homework_1_answers_item_clicked(index, at_position, mouse_button_index):
	match questionplace:
		0:
			if (index == 1): #b
				$HomeworkQ.set_texture(load("res://assets/Question2.png"))
				$HomeworkAnswers.set_item_text(0, "11011")
				$HomeworkAnswers.set_item_text(1, "10011")
				$HomeworkAnswers.set_item_text(2, "11001")
				$HomeworkAnswers.set_item_text(3, "11111")
				questionplace += 1
			else:
				_incorrect()
		1:
			if (index == 0): #b
				$HomeworkQ.set_texture(load("res://assets/Question3.png"))
				$HomeworkAnswers.set_item_text(0, "11101")
				$HomeworkAnswers.set_item_text(1, "100001")
				$HomeworkAnswers.set_item_text(2, "11000")
				$HomeworkAnswers.set_item_text(3, "10110")
				questionplace += 1
			else:
				_incorrect()
		2:
			if (index == 3): #b
				$HomeworkQ.set_texture(load("res://assets/Question4.png"))
				$HomeworkAnswers.set_item_text(0, "1024")
				$HomeworkAnswers.set_item_text(1, "2048")
				$HomeworkAnswers.set_item_text(2, "512")
				$HomeworkAnswers.set_item_text(3, "4096")
				questionplace += 1
			else:
				_incorrect()
		3:
			if (index == 0): #b
				$HomeworkQ.set_texture(load("res://assets/Question5.png"))
				$HomeworkAnswers.set_item_text(0, "A1")
				$HomeworkAnswers.set_item_text(1, "B0")
				$HomeworkAnswers.set_item_text(2, "A6")
				$HomeworkAnswers.set_item_text(3, "AA")
				questionplace += 1
			else:
				_incorrect()
		4:
			if (index == 4): #b
				$HomeworkQ.set_texture(load("res://assets/Question6.png"))
				$HomeworkAnswers.set_item_text(0, "8")
				$HomeworkAnswers.set_item_text(1, "16")
				$HomeworkAnswers.set_item_text(2, "32")
				$HomeworkAnswers.set_item_text(3, "64")
				questionplace += 1
			else:
				_incorrect()
		5:
			if (index == 2): #b
				$HomeworkQ.set_texture(load("res://assets/Question7.png"))
				$HomeworkAnswers.set_item_text(0, "20")
				$HomeworkAnswers.set_item_text(1, "19")
				$HomeworkAnswers.set_item_text(2, "14")
				$HomeworkAnswers.set_item_text(3, "1C")
				questionplace += 1
			else:
				_incorrect()
		6:
			if (index == 4): #b
				$HomeworkQ.set_texture(load("res://assets/Question8.png"))
				$HomeworkAnswers.set_item_text(0, "64")
				$HomeworkAnswers.set_item_text(1, "50")
				$HomeworkAnswers.set_item_text(2, "58")
				$HomeworkAnswers.set_item_text(3, "60")
				questionplace += 1
			else:
				_incorrect()
		7:
			if (index == 3): #b
				$HomeworkQ.set_texture(load("res://assets/Question9.png"))
				$HomeworkAnswers.set_item_text(0, "3")
				$HomeworkAnswers.set_item_text(1, "7")
				$HomeworkAnswers.set_item_text(2, "5")
				$HomeworkAnswers.set_item_text(3, "2")
				questionplace += 1
			else:
				_incorrect()
		8:
			if (index == 2): #b
				$HomeworkQ.set_texture(load("res://assets/Question10.png"))
				$HomeworkAnswers.set_item_text(0, "2")
				$HomeworkAnswers.set_item_text(1, "0")
				$HomeworkAnswers.set_item_text(2, "4")
				$HomeworkAnswers.set_item_text(3, "-2")
				questionplace += 1
			else:
				_incorrect()
		9:
			if (index == 4): #b
				pass
			else:
				_incorrect()
