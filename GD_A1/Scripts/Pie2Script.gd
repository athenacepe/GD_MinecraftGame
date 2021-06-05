extends Area2D

onready var global_vars = get_node("/root/Global")

func _ready():
	pass 

func _on_Pie2_body_entered(body):
	if body.name == "Player" :
		global_vars.pie -= 1
		global_vars.score += 50
		queue_free()
	pass
