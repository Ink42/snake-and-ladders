extends Node2D

var dice_number:int
@onready var label: Label = $Label
@onready var sprite:CharacterBody2D = $beta_player

var row = 10
var col = 10
var col_counter=1
var row_counter=1
var dice_counter =0
var move_left:bool = true
@export var step_size = 64
func dice_rolled() -> void:
	dice_number = randi_range(1,4)
	#label.text = str(dice_number)+" "+ str(sprite.position)
	label.text ="player position "+ str(sprite.position) + "\nRolled "+str(dice_number)+"\n Steps "+str(dice_counter)
	dice_counter+=dice_number
	move_player(dice_number)
	
func move_player(dice_number):
	if dice_counter>col && row_counter<row:
		row_counter+=1
		col_counter=1
		sprite.move_local_y(-step_size)
		move_left =!move_left
		dice_counter=0
		sprite.get_node("AnimatedSprite2D").flip_h = move_left
		

	if !sprite.get_node("AnimatedSprite2D").is_flipped_h():
		sprite.move_local_x(step_size* dice_number)
	else:
		sprite.move_local_x(-step_size)
	col_counter+=1
		
