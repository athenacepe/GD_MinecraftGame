extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			$Storybox.visible = true
	pass


func _on_Person_body_exited(body):
	if body.name == "Player":
		$Storybox.visible = false
	pass
