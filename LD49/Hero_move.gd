extends KinematicBody2D

export (int) var speed = 400

var velocity = Vector2()

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("right") and (self.position.x < 1023):
		velocity.x += 1
	if Input.is_action_pressed("left") and (self.position.x > 1):
		velocity.x -= 1
	if Input.is_action_pressed("down") and (self.position.y < 599):
		velocity.y += 1
	if Input.is_action_pressed("up") and (self.position.y > 1):
		velocity.y -= 1
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)

