extends KinematicBody2D
class_name Pelota

var speed = 0
var direction = Vector2.ZERO
var is_moving = false
var angular_speed = PI

func reset_ball():
	# Cuando el nodo este cargado, que pasara
	speed = 600
	direction.x = [-1, 1][randi() % 2]
	direction.y = [-0.8, 0.8][randi() % 2]
	is_moving = true


func _ready():
	randomize()
	reset_ball()

func _physics_process(delta):
	# Funcion ue se ejecuta una vez por frame 
	if is_moving:
		var collide = move_and_collide(direction * speed * delta)
		rotation += angular_speed*delta
		# Nuestra variable collide contendra el objeto con el que choco
		if collide:
			direction = direction.bounce(collide.normal)
