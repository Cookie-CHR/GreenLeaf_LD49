extends Area2D

var rng = RandomNumberGenerator.new()
export (int) var speed = 100
var chosen = false
var speedX = 0

func _physics_process(delta):
	rng.randomize()
	if not chosen:
		choose_speed()
	if self.position.x > 1023:
		speedX = -abs(speedX) 
	if self.position.x < 0:
		speedX = abs(speedX)
	self.position.y += 1
	self.position.x += speedX
	dropped()
	
func choose_speed():
	if (chosen == false):
		speedX = rng.randi_range(-5, 5)
		chosen = true
	

func dropped():
	if self.position.y > 600 :
		get_tree().change_scene("res://Scenes/Dropped.tscn")


func _on_Area2D_body_entered(body):
	var txtr = self.name
	var hr = body.name
	
	#If you haven't changed your container yet, the hero is still called "Hero"
	if (hr=="Hero"): hr = "1"
	if str(txtr) == str(hr):
		Counter.add(txtr)
		queue_free()
	else:
		get_tree().change_scene("res://Scenes/Messed.tscn")