extends Area2D

onready var global_vars = get_node("/root/Global")

func _ready():
	pass 

func _on_EnderEye_body_entered(body):
	if body.name == "Player" :
		global_vars.score += 2
		queue_free()
	pass
