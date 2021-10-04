extends KinematicBody2D

export (int) var speed = 100

var velocity = Vector2()
var curr_velocity = 1
var t_right = preload("res://Images/Truck_Right.png")
var t_left = preload("res://Images/Truck_Left.png")


func get_input():
	velocity = Vector2()
	if position.x < 300:
		curr_velocity = 1
		$Sprite.texture = t_right
	elif position.x >726:
		curr_velocity = -1
		$Sprite.texture = t_left
	velocity.x = curr_velocity
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	position.y = 100
	get_input()
	velocity = move_and_slide(velocity)

