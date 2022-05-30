extends Control

export (int) var minutes = 1
export (int) var seconds
var dseconds = 10
	
func _physics_process(_delta):
	if seconds > 0 and dseconds <= 0:
		seconds -= 1
		dseconds = 10
	if minutes > 0 and seconds <= 0:
		minutes -= 1
		seconds = 60
		
	if seconds >= 10:
		$sec.set_text(str(seconds) + " : ")
	else:
		$sec.set_text("0" + str(seconds) + " : ")
	
	if dseconds >= 10:
		$dsec.set_text(str(dseconds))
	else:
		$dsec.set_text("0" + str(dseconds))

	if minutes >= 10:
		$min.set_text(str(minutes) + " : ")
	else:
		$min.set_text("0" + str(minutes) + " : ")

func _on_Timer_timeout():
	if dseconds > 0:
		dseconds -= 1
	
	if minutes == 0 and seconds == 0 and dseconds == 0:
		Global.game_end = true
