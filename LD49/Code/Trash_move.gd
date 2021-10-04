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
	self.position.y += 50 * delta
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
	
	# Unknown bug: for some reason, sometimes the object will just call itself "@3@4" or something
	# I don't know what causes the @ and the second digit,
	# but the first digit is the right number so...
	if "@" in txtr:
		txtr = txtr.substr(1,1)
	
	#If you haven't changed your container yet, the hero is still called "Hero"
	if (hr=="Hero"): hr = "1"
	
	if str(txtr) == str(hr):
		Counter.add(txtr)
		queue_free()
	else:
		get_tree().change_scene("res://Scenes/Messed.tscn")
