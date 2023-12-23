extends StaticBody2D

#signal player_entered_gate(body)
signal player_entered_gate

func _on_area_body_entered(body):
	player_entered_gate.emit()
	pass # Replace with function body.
