extends Node2D

onready var global_vars = get_node("/root/Global")

func _ready():
	pass 
	
func _physics_process(delta):
	$Node/Panel/Label2.set_text("Final Score: " + str(global_vars.score))
	pass


func _on_Button_pressed():
	get_tree().change_scene("res://World/Title.tscn")
	pass # Replace with function body.
