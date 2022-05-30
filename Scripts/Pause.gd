extends Control

func _ready():
	if Global.drop_sound_on == false:
		$Sound_Toggle.pressed = false
	
	if !BgMusic.playing:
		$Music_Toggle.pressed = false

func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		if (visible == true):
			visible = false
			resume()
		else:
			visible = true

func resume():
	get_tree().set_deferred("paused", false)

func _on_Continue_Btn_pressed():
	visible = false
	resume()

func _on_Restart_Btn_pressed():
	Global.price = 0
	Global.box_num = 0
	Global.game_end = false
	get_tree().change_scene("res://Scenes/Level.tscn")
	resume()
	
	if Global.drop_sound_on == false:
		$Sound_Toggle.pressed = true
#		print($Sound_Toggle.pressed)

func _on_Menu_Btn_pressed():
	Global.restart_settings()
	get_tree().change_scene("res://Scenes/Main_Menu.tscn")

func _on_Music_Toggle_pressed():
	if BgMusic.playing:
		BgMusic.stop()
	else:
		BgMusic.play()

func _on_Sound_Toggle_pressed():
	if Global.drop_sound_on:
		Global.drop_sound_on = false
	else:
		Global.drop_sound_on = true

func _on_Game_Restart_Btn_pressed():
	Global.restart_settings()
	get_tree().change_scene("res://Scenes/Level.tscn")
	resume()


