extends Node2D

onready var global_vars = get_node("/root/Global")

func _ready():
	pass

func _process(delta):
	$Score.set_text("Score: " + str(global_vars.score))
	pass


func _on_Exit_pressed():
	get_tree().change_scene(("res://World/Title.tscn"))
	pass # Replace with function body.
