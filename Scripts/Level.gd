extends Node2D

onready var box = preload("res://Scenes/Box.tscn")
onready var box_container = get_node("Box_Spawn")

var startingY = 400

var level_boxes = 0

func _ready():
	set_process(true)
	spawn_boxes(Global.level_num + 1)
	

func _process(delta):
	if (Global.box_num == 0):
		$Menus/Ending.visible = true
		
	if (Global.level_num > 1):
		$Dialog_Panel/Dialog_Label.text = "Boxes Left: " + str(Global.box_num) + " | Level: " + str(Global.level_num)
		
	if (Global.game_end):
		$Menus/Totals.visible = true

func spawn_boxes(num):
	for i in range(num):
		var b = box.instance()
		box_container.add_child(b)
		b.position = Vector2(118, startingY)
		startingY -= 50
		
		$Menus/Ending/Box_Num.text = "Boxes in Level: " + str(Global.box_num)

func _on_Door_body_entered(body):
	if (body.get_name() == "RigidBody2D"):
		body.queue_free()
		Global.box_num -= 1
		$Dialog_Panel/Dialog_Label.text = "Boxes Left: " + str(Global.box_num) + " | Level: " + str(Global.level_num)
		level_boxes += 1
		
		
		if (Global.box_num == 0):
			Global.total_boxes += level_boxes
			Global.total_money += Global.price
			
			print("Total Boxes: " + str(Global.total_boxes))
			print("Total Money: " + str(Global.total_money))

func _on_Pause_Btn_pressed():
	$Menus/Pause.visible = true
	
