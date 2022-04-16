extends KinematicBody2D

var speed : int = 350
var gravity : int = 1000
var jumpforce : int = 250
var velocity : Vector2 = Vector2()
	
func _physics_process(delta):
	velocity.x = 0
	
	if Input.is_action_pressed("ui_right") or Input.is_action_pressed("ui_right_d"):
		velocity.x += speed
	
	if Input.is_action_pressed("ui_left") or Input.is_action_pressed("ui_left_a"):
		velocity.x -= speed
		
	velocity = move_and_slide(velocity, Vector2.UP)
	velocity.y += gravity * delta
	
	if Input.is_action_pressed("ui_up") or Input.is_action_pressed("ui_up_w"):
		if (is_on_floor()):
			velocity.y -= jumpforce

func _process(delta):
	if Input.is_action_pressed("ui_right") or Input.is_action_pressed("ui_right_d"):
		$AnimatedSprite.play("rolling")
		$AnimatedSprite.set_flip_h(false)
	elif Input.is_action_pressed("ui_left") or Input.is_action_pressed("ui_left_a"):
		$AnimatedSprite.play("rolling")
		$AnimatedSprite.set_flip_h(true)
	else:
		$AnimatedSprite.play("idle")
