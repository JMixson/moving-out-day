extends CanvasLayer

func _on_Play_pressed():
	get_tree().change_scene("res://Scenes/Level.tscn")
	get_tree().paused = false

func _on_Credits_pressed():
	get_tree().change_scene("res://Scenes/Credits.tscn")
