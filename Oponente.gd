extends KinematicBody2D

var speed = 600
onready var ball = get_parent().find_node("Pelota")
	
func _physics_process(_delta):
	var direction = Vector2(0,_get_direction())
	var _slide = move_and_slide( direction*speed ) 
	

func _get_direction():
	# Devuleve 0 si pelota quieto, 
	# 1 si va hacia abajo
	# -1 si el movimiento es arriba 
	if abs( ball.position.y - position.y ) > 25:
		if ball.position.y > position.y:
			return 1 
		else:
			return -1
	else:
		return 0
