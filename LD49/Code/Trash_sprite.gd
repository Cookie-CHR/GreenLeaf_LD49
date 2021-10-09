extends Sprite

var rng = RandomNumberGenerator.new()
var t1 = preload("res://Images/Trash_1.png")
var t2 = preload("res://Images/Trash_2.png")
var t3 = preload("res://Images/Trash_3.png")
var path

func _ready():
	rng.randomize()
	var x = rng.randi_range(1, 3)
	if x == 1:
		self.texture = t1
		get_parent().set_name("1")
		
		path = str(self.get_path()).replace("Sprite","")
		get_node(path+"Polygon1").disabled = false
		get_node(path+"Polygon2").disabled = true
		get_node(path+"Polygon3").disabled = true
		
	elif x == 2:
		self.texture = t2
		get_parent().set_name("2")
		
		path = str(self.get_path()).replace("Sprite","")
		get_node(path+"Polygon1").disabled = true
		get_node(path+"Polygon2").disabled = false
		get_node(path+"Polygon3").disabled = true
		
	else:
		self.texture = t3
		get_parent().set_name("3")
		
		path = str(self.get_path()).replace("Sprite","")
		get_node(path+"Polygon1").disabled = true
		get_node(path+"Polygon2").disabled = true
		get_node(path+"Polygon3").disabled = false
		
	self.set_scale(Vector2(0.5,0.5))
	
func _process(delta):
	set_rotation_degrees(get_rotation_degrees()+get_parent().speedX)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
