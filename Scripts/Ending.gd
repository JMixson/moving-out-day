extends Control

func _process(_delta):
	$Ending_Price.text = "$" + str(Global.price)

func resume():
	get_tree().set_deferred("paused", false)

func _on_R_Btn_pressed():
	Global.price = 0
	get_tree().change_scene("res://Scenes/Level 1.tscn")
	resume()

func _on_C_Btn_pressed():
	Global.price = 0
	get_tree().change_scene("res://Scenes/Credits.tscn")
