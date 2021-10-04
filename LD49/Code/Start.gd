extends Panel

# Called when the node enters the scene tree for the first time.
func _ready():	
	for child in get_children():
		if child.name == "Mute":
			get_node("Mute").connect("pressed", self, "mute_unmute", [child])
		if child.name == "Instructions":
			get_node(child.name).connect("pressed", self, "change_scn_instr")
		elif child.name == "Play":
			get_node(child.name).connect("pressed", self, "change_scn")
			Counter.reset()

func mute_unmute(button):
	MusicPlayer.mute_unmute()
	button.set_Sprite()

func change_scn():
	get_tree().change_scene("res://Scenes/Main.tscn")

func change_scn_instr():
	get_tree().change_scene("res://Scenes/Instructions.tscn")
