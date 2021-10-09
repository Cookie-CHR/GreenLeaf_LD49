extends Sprite

var box1 = preload("res://Images/Box_1.png")
var box2 = preload("res://Images/Box_2.png")
var box3 = preload("res://Images/Box_3.png")
var path

var velocity = Vector2()

func get_input():
	if Input.is_action_pressed("box_1"):
		self.texture = box1
		
		path = str(self.get_path()).replace("Sprite3","")
		get_node(path+"Polygon1").disabled = false
		get_node(path+"Polygon2").disabled = true
		get_node(path+"Polygon3").disabled = true
		
		get_parent().set_name("1")
	if Input.is_action_pressed("box_2"):
		self.texture = box2
		
		path = str(self.get_path()).replace("Sprite3","")
		get_node(path+"Polygon1").disabled = true
		get_node(path+"Polygon2").disabled = false
		get_node(path+"Polygon3").disabled = true
		
		get_parent().set_name("2")
	if Input.is_action_pressed("box_3"):
		self.texture = box3
		
		path = str(self.get_path()).replace("Sprite3","")
		get_node(path+"Polygon1").disabled = true
		get_node(path+"Polygon2").disabled = true
		get_node(path+"Polygon3").disabled = false
		
		get_parent().set_name("3")
	
func _physics_process(delta):
	get_input()

