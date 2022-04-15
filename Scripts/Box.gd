extends Node2D

var rigid_entered = false
export var box_price = 100

var random_num = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	random_num.randomize()
	box_price = Global.box_values[random_num.randi_range(0,10)]
	print(box_price)
	
	$RigidBody2D/Price.text = "$" + str(box_price)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	$Price.text = str(box_price)


func _on_RigidBody2D_body_entered(body):
	print(self)
	print("Dropped onto " + body.get_name())
	rigid_entered = true
#	self.move_local_y(25)

	box_price = 0
	if (body.get_name() == "Floor"):
		Global.price -= float(box_price / 10)
		$RigidBody2D/Price.text = "$" + str(box_price)
		print("Total price: $" + str(Global.price))
