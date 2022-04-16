extends Node2D

var rigid_entered = false
export var box_price = 100

var random_num = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	random_num.randomize()
	box_price = Global.box_values[random_num.randi_range(0,10)]
	print(box_price)
	
	Global.price += box_price
	print("Total price: $" + str(Global.price))
	
	$RigidBody2D/Price.text = "$" + str(box_price)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	$Price.text = str(box_price)


func _on_RigidBody2D_body_entered(body):
	if (body.get_name() == "Floor"):
		rigid_entered = true
		
		if (box_price != 0):
			box_price /= 2
			
			
		Global.price -= float(box_price)
		$RigidBody2D/Price.text = "$" + str(box_price)
		print("Total price: $" + str(Global.price))
