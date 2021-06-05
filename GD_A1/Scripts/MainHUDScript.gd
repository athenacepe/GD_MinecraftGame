extends Node2D

onready var global_vars = get_node("/root/Global")

func _ready():
	pass 

func _process(_delta):
	$CanvasLayer/Lives.set_text("Lives: " + str(global_vars.lives))
	if (global_vars.lives) <= 0 :
		get_tree().change_scene(("res://Display Scenes/Dead.tscn")) 
		$CanvasLayer/Lives.set_text("Lives: " + str(global_vars.lives))
		
	$CanvasLayer/Pies.set_text("Pies Left: " + str(global_vars.pie))
	$CanvasLayer/Score.set_text("Score: " + str(global_vars.score))
