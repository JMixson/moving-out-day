extends Control

func resume():
	get_tree().set_deferred("paused", false)

func _on_Menu_Btn_pressed():
	get_tree().change_scene("res://Scenes/Main Menu.tscn")

func _on_R_Btn_pressed():
	Global.price = 0
	get_tree().change_scene("res://Scenes/Level 1.tscn")
	resume()


