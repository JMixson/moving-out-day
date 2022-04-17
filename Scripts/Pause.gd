extends Control

var is_paused = false

func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		if !get_tree().paused:
			visible = true
			pause()
		else:
			visible = false
			resume()
	
func pause():
	get_tree().set_deferred("paused", true)
	
func resume():
	get_tree().set_deferred("paused", false)

func _on_Continue_Btn_pressed():
	visible = false
	resume()

func _on_Restart_Btn_pressed():
	Global.price = 0
	get_tree().change_scene("res://Scenes/Level 1.tscn")
	resume()

func _on_Menu_Btn_pressed():
	Global.price = 0
	get_tree().change_scene("res://Scenes/Main Menu.tscn")
	
func _on_Credits_Btn_pressed():
	Global.price = 0
	get_tree().change_scene("res://Scenes/Credits.tscn")

func _on_Quit_Btn_pressed():
	get_tree().quit()
	
func _on_Music_Toggle_pressed():
	if BgMusic.playing:
		BgMusic.stop()
	else:
		BgMusic.play()
