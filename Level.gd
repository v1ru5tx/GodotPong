extends Node2D

# Variable donde guradaremos los goles 
var PlayerScore = 0
var OponentScore = 0

func _restart_game():
	$Pelota.is_moving = false
	$Pelota.direction = Vector2.ZERO
	$Pelota.position = Vector2(960,540)
	$Pelota.reset_ball()

func _process(delta):
	$Marcador_player.text = str(PlayerScore)
	$Marcador_oponente.text = str(OponentScore)


func _on_Arco_Player_body_entered(body):
	# Body en este caso es la pelota.
	if body is Pelota:
		OponentScore += 1
		_restart_game()


func _on_Arco_Oponente_body_entered(body):
	if body is Pelota:
		PlayerScore += 1
		_restart_game()
