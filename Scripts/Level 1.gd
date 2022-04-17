extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Global.box_num == 0):
		$Ending.visible = true
#	pass

func _on_Door_body_entered(body):
	if (body.get_name() == "RigidBody2D"):
		body.queue_free()
		Global.box_num -= 1
		print("Boxes: " + str(Global.box_num))
