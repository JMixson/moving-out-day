extends Control

func _on_Menu_Btn_pressed():
	get_tree().change_scene("res://Scenes/Main Menu.tscn")

func _on_Q_Btn_pressed():
	get_tree().quit()


