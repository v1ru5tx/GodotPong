extends Node2D

func _restart_game():
	$Pelota.is_moving = false
	$Pelota.direction = Vector2.ZERO
	$Pelota.position = Vector2(960,540)
	$Pelota.reset_ball()



func _on_Arco_Player_body_entered(body):
	# Body en este caso es la pelota
	_restart_game()


func _on_Arco_Oponente_body_entered(body):
	_restart_game()
