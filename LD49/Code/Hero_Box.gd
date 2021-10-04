extends Sprite

var box1 = preload("res://Images/Box_1.png")
var box2 = preload("res://Images/Box_2.png")
var box3 = preload("res://Images/Box_3.png")


var velocity = Vector2()

func get_input():
	if Input.is_action_pressed("box_1"):
		self.texture = box1
		get_parent().set_name("1")
	if Input.is_action_pressed("box_2"):
		self.texture = box2
		get_parent().set_name("2")
	if Input.is_action_pressed("box_3"):
		self.texture = box3
		get_parent().set_name("3")
	
func _physics_process(delta):
	get_input()

