extends KinematicBody2D

var speed = 400

func _physics_process(delta):
	var direction = Vector2.ZERO # Vector2(0,0)
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1
	
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	
	move_and_slide(speed * direction)
	
