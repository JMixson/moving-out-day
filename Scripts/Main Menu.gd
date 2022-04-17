extends CanvasLayer

func _on_Play_pressed():
	get_tree().change_scene("res://Scenes/Level 1.tscn")
	get_tree().paused = false

func _on_Credits_pressed():
	get_tree().change_scene("res://Scenes/Credits.tscn")

func _on_Quit_pressed():
	get_tree().quit()
