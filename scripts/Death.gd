extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$MarginContainer/VBoxContainer/PlayButton.grab_focus()
	$MarginContainer/VBoxContainer/HighScoreLabel.text = str("High Score: ", Global.highScore)
	$MarginContainer/VBoxContainer/ScoreLabel.text = str("Score: ", Global.score)


func _on_PlayButton_pressed():
	Global.score = 0
	get_tree().change_scene("res://scenes/World.tscn")


func _on_QuitButton_pressed():
	get_tree().change_scene("res://scenes/Menu.tscn")
