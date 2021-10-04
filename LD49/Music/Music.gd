extends AudioStreamPlayer

var curr_music = "res://Music/Metalmania.ogg"
var mute = false

# Called when the node enters the scene tree for the first time.
func _ready():
	if(not mute):
		play()

func mute_unmute():
	if (mute):
		mute = false
		play()
	else:
		mute = true
		stop()
