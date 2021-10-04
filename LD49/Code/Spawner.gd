extends Node2D

# Items
onready var trash = load("res://Scenes/Trash.tscn")
onready var spawner = get_node("/root/Panel/Truck")
var _timer = null


func _ready():
	_timer = Timer.new()
	add_child(_timer)

	_timer.connect("timeout", self, "_on_Timer_timeout")
	_timer.set_wait_time(3.0)
	_timer.set_one_shot(false) # Make sure it loops
	_timer.start()


func _on_Timer_timeout():
	var trashSpawn = trash.instance()
	trashSpawn.set_position(spawner.position)
	add_child(trashSpawn)
