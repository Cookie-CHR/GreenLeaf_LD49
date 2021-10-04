extends Node


# Declare member variables here. Examples:
var c1 = 0
var c2 = 0
var c3 = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	reset()

func add(type):
	if type == "1":
		c1 += 1
	elif type == "2":
		c2 += 1
	elif type == "3":
		c3 += 1

func reset():
	c1 = 0
	c2 = 0
	c3 = 0

func getC(type):
	if type == "1":
		return c1
	elif type == "2":
		return c2
	elif type == "3":
		return c3
