extends CharacterBody2D
var speed = 200
var can_laser:bool =true
var can_grenade:bool=true

signal laser_sig
signal grenade_sig

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		
	
	#input
	var direction= Input.get_vector('left','right','up','down')
	velocity = direction*speed
	move_and_slide()
	#move_and_collide(Vector2.ZERO)
	#print(direction)
	position += direction*delta*speed
	
	
	if Input.is_action_pressed("primary action") and can_laser:
		print('shoot laser')
		# randomly select marker for laser start position
		var laser_makers = $LaserStartPosition.get_children()
		#print(laser_makers)
		var selected_marker = laser_makers[randi()% laser_makers.size()]
		# emit the position we selected
		laser_sig.emit(selected_marker.global_position)
		$Timer.start()
		can_laser=false
		
	if Input.is_action_pressed("secondary action") and can_grenade:
		print('shoot grenade')
		var selected_marker = $LaserStartPosition.get_children()[1].global_position
		grenade_sig.emit(selected_marker)
		$GrenadeThrowTimer.start()
		can_grenade=false


func _on_timer_timeout():
	can_laser=true
	pass # Replace with function body.


func _on_grenade_throw_timer_timeout():
	can_grenade=true
	pass # Replace with function body.
