extends Node2D

var dice_number:int
@onready var label: Label = $Label
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D




func dice_rolled() -> void:
	dice_number = randi_range(1,6)
	label.text = str(dice_number)
	move_player(dice_number)
	
func move_player(dice_number):
	sprite.move_local_x(30)
