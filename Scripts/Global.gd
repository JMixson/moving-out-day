extends Node

var box_values = [50, 100, 150, 200, 250, 300, 350, 400, 450, 500, 550]

var price = 0

var box_num = 0

var level_num = 1

var drop_sound_on = true

func restart_settings():
	Global.price = 0
	Global.box_num = 0
	Global.level_num = 1
