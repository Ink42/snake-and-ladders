extends Area2D

@export var move_to: Marker2D

func _ready() -> void:
	assert(move_to != null, "ERROR: Marker is empty")

# This function is called when another body enters the area
func _on_body_entered(body: Node2D) -> void:
	# Move the body to the position of the move_to marker
	if body and move_to:
		body.global_position = move_to.global_position

# This function is called when another body exits the area
func _on_body_exited(body: Node2D) -> void:
	# You can implement logic here for when a body exits the area, if needed
	pass
