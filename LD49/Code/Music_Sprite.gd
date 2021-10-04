extends TextureButton

var music_on = preload("res://Images/Music_On.png")
var music_off = preload("res://Images/Music_Off.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	set_Sprite()

func set_Sprite():
	if (MusicPlayer.mute):
		texture_normal = music_off
	else:
		texture_normal = music_on


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
