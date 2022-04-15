extends KinematicBody2D

var speed : int = 350
var velocity : Vector2 = Vector2()
	
func _physics_process(_delta):
	velocity = Vector2()
	
	if Input.is_action_pressed("ui_right") or Input.is_action_pressed("ui_right_d"):
		velocity.x += 1
	
	if Input.is_action_pressed("ui_left") or Input.is_action_pressed("ui_left_a"):
		velocity.x -= 1
	
	velocity = velocity.normalized()
	move_and_slide(velocity * speed)
