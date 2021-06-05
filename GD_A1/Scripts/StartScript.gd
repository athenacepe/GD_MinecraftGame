extends Button

onready var global_vars = get_node("/root/Global")

func _ready():
	pass 
	
func _on_Start_pressed():
	global_vars.pie = 3 #
	global_vars.lives = 3 #
	global_vars.score = 0
	get_tree().change_scene(("res://World/World1.tscn"))
	pass # Replace with function body.
