extends KinematicBody2D

var speed = 500

func _physics_process(_delta):
	var direction = Vector2.ZERO # Vector2(0,0)
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1
	
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	
	var _retorn = move_and_slide(speed * direction)
	
