extends Node2D

var laser_scene:PackedScene= preload("res://scenes/projectiles/laser.tscn")
var grenade_scene:PackedScene= preload("res://scenes/projectiles/grenade.tscn")
var testArr: Array[String]= ["Test","Hello","Stuff"]
# Called when the node enters the scene tree for the first time.
func _ready():
	#get_node("Logo").rotation_degrees = 90
	print(testArr[2])
	
	#print($Logo/Sprite2D/Sprite2D2/Sprite2D3)
	#print(%Sprite2D3.position)
	# Logo has been deleted no need for its variables.
	#$Logo.testFunc()
	for i in testArr:
		print(i)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#if $Logo.rotation_degrees < 50:
	#$Logo.rotation_degrees += 60 * delta 
	#else:
		#$Logo.rotation_degrees -= 1 
	#if $Logo.position.x > 1200:
		#$Logo.pos.x =0
	
	#print(Input.is_action_pressed('left'))
	pass

#
#func _on_area_2d_body_entered(body):
	#print('body has entered')
	#pass # Replace with function body.
	#
#
#
#func _on_area_2d_body_exited(body):
	#print('exited body u')
	#pass # Replace with function body.


func _on_gate_player_entered_gate():
	print('Player is here')
	pass # Replace with function body.


func _on_player_laser_sig(pos):
	var laser = laser_scene.instantiate()
	#laser.position = $Player.position + Vector2(0,-100)
	# 1. update the laser position
	laser.position = pos
	#add_child(laser)
	# 2. we have to move the laser
	# 3. add laser instance to a node2d
	$Projectiles.add_child(laser)
	print('laser from level')
	pass # Replace with function body.
	
	
func _on_player_grenade_sig(pos):
	print('grenade from level')
	var grenade = grenade_scene.instantiate()
	grenade.position = pos
	$Projectiles.add_child(grenade)
