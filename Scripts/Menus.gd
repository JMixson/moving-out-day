extends CanvasLayer

var num = 0

func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel") or ($Pause.visible == true) or ($Ending.visible == true):
		if !get_tree().paused:
			pause()
		else:
			resume()
	else:
		resume()
#
func pause():
	get_tree().set_deferred("paused", true)
	
func resume():
	get_tree().set_deferred("paused", false)
