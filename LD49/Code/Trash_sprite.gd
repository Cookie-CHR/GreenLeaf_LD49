extends Sprite

var rng = RandomNumberGenerator.new()
var t1 = preload("res://Images/Trash_1.png")
var t2 = preload("res://Images/Trash_2.png")
var t3 = preload("res://Images/Trash_3.png")

func _ready():
	rng.randomize()
	var x = rng.randi_range(1, 3)
	if x == 1:
		self.texture = t1
		get_parent().set_name("1")
	elif x == 2:
		self.texture = t2
		get_parent().set_name("2")
	else:
		self.texture = t3
		get_parent().set_name("3")
	self.set_scale(Vector2(0.5,0.5))
	
	# Unknown bug: for some reason, sometimes the object will just call itself "@3@4" or something
	# I don't know what causes the @ and the second digit,
	# but the first digit is the right number so...
	if get_parent().get_name().substr(0,1) == '@':
		get_parent().set_name(get_parent().get_name().substr(1,1))

func _process(delta):
	set_rotation_degrees(get_rotation_degrees()+get_parent().speedX)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
