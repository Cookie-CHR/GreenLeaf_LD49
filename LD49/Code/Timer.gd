extends Label


var t = 60
var _timer = null

func _ready():
	_timer = Timer.new()
	add_child(_timer)

	_timer.connect("timeout", self, "_on_Timer_timeout")
	_timer.set_wait_time(1.0)
	_timer.set_one_shot(false) # Make sure it loops
	_timer.start()


func _on_Timer_timeout():
	if t == 0:
		get_tree().change_scene("res://Scenes/Victory.tscn")
		_timer.stop()
		t = 60
	t -= 1
	self. text = "Time left: " + str(t)
