extends Control

func _ready():
	$Paycheck.text = "Paycheck: $" + str(Global.total_money)
	$Current_Level.text = "Current Level: " + str(Global.level_num)
	$Boxes_Collected.text = "Boxes Collected: " + str(Global.total_boxes)

func resume():
	get_tree().set_deferred("paused", false)

func _on_R_Btn_pressed():
	Global.restart_game_settings()
	get_tree().change_scene("res://Scenes/Level.tscn")
	resume()


func _on_C_Btn_pressed():
	Global.restart_game_settings()
	get_tree().change_scene("res://Scenes/Credits.tscn")
