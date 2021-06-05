extends Button

onready var global_vars = get_node("/root/Global")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Start_pressed():
	global_vars.lives = 3
	global_vars.score = 0
	global_vars.pie = 3
	get_tree().change_scene(("res://World/Intro.tscn"))
	pass # Replace with function body.
