extends Area2D
onready var global_vars = get_node("/root/Global")
export(String, FILE, "*.tscn") var world_scene

func _ready():
	pass # Replace with function body.

func _process(_delta):
	var bodies = get_overlapping_bodies()
	
	if get_tree().get_current_scene().get_name() == "World1":
		for body in bodies:
			if body.name == "Player" && global_vars.pie == 2:
				get_tree().change_scene("res://World/World2.tscn")
				
	if get_tree().get_current_scene().get_name() == "World2":
		for body in bodies:
			if body.name == "Player" && global_vars.pie == 0:
				get_tree().change_scene("res://World/End.tscn")
	pass
