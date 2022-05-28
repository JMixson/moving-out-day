extends Control

func _ready():
	$Heading.text = "Level " + str(Global.level_num) + " Total"

func _process(_delta):
	$Ending_Price.text = "$" + str(Global.price)

func resume():
	get_tree().set_deferred("paused", false)

func _on_R_Btn_pressed():
	Global.price = 0
	Global.box_num = 0
	get_tree().change_scene("res://Scenes/Level.tscn")
	resume()

func _on_Level_Btn_pressed():
	Global.level_num += 1
	Global.box_num = 0
	get_tree().change_scene("res://Scenes/Level.tscn")
	resume()
