extends Node

#var box_values = [50, 100, 150, 200, 250, 300, 350, 400, 450, 500, 550]

var price = 0

var box_num = 0
var level_num = 1

var drop_sound_on = true

var game_end = false

var total_boxes = 0
var total_money = 0

func restart_level_settings():
	Global.price = 0
	Global.box_num = 0
	Global.game_end = false

func restart_game_settings():
	Global.price = 0
	Global.box_num = 0
	Global.level_num = 1
	Global.total_boxes = 0
	Global.total_money = 0
	Global.game_end = false
