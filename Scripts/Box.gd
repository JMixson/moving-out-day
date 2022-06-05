extends Node2D

var rigid_entered = false
export var box_price = 150

func _ready():
	Global.price += box_price
	print("Total price: $" + str(Global.price))
	
	Global.box_num += 1
	print("Boxes: " + str(Global.box_num))
	
	$RigidBody2D/Value.text = "$" + str(box_price)


func _on_RigidBody2D_body_entered(body):
	if (body.get_name() == "Floor"):
		rigid_entered = true
		
		if Global.drop_sound_on:
			$Drop_Sound.play()
		
		if box_price != 0:
			box_price -= 10
			Global.price -= 10  
		if box_price <= 0:
			box_price = 0
		if Global.price <= 0:
			Global.price = 0
			
		$RigidBody2D/Value.text = "$" + str(box_price)
		print("Total price: $" + str(Global.price))
