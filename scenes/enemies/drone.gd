extends CharacterBody2D

#func upupup():
	#var timed = Timer(true)
	#timed.start(4)
	#if timed.is_stopped():
		#velocity= Vector2.UP*100

func _process(_delta):
	#direction
	var direction = Vector2.RIGHT
	velocity = direction*100
	if Input.is_action_pressed("secondary action"):
		velocity = Vector2.UP*200
	#velocity
	#upupup()s
	#move and slide
	move_and_slide()
	pass
