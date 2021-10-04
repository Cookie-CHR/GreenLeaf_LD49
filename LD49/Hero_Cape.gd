extends Sprite

var right = false
var _timer = null
var cape_l = preload("res://Sprites/Hero_Cape_Left.png")
var cape_r = preload("res://Sprites/Hero_Cape_Right.png")


func _ready():
	_timer = Timer.new()
	add_child(_timer)

	_timer.connect("timeout", self, "_on_Timer_timeout")
	_timer.set_wait_time(1.0)
	_timer.set_one_shot(false) # Make sure it loops
	_timer.start()


func _on_Timer_timeout():
	if right:
		self.texture = cape_l
	else:
		self.texture = cape_r
	right = not right
