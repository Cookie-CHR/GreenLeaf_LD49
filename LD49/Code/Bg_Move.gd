extends Node2D

var bg = preload("res://Images/Bg.png")
var movement = Vector2(0, 150)

func _process(delta):
	for child in get_children():
		child.position += movement * delta
		if child.position.y >= 700:
			child.position.y = -100
