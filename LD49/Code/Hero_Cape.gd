extends Sprite

var right = false
var help = 0
var cape_l = preload("res://Images/Hero_Cape_Left.png")
var cape_r = preload("res://Images/Hero_Cape_Right.png")


func _process(delta):
	if (help == 0):
		_on_Timer_timeout()
	help = (help + 1) % 30


func _on_Timer_timeout():
	if right:
		self.texture = cape_l
	else:
		self.texture = cape_r
	right = not right
