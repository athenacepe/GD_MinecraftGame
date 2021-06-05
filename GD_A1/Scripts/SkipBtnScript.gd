extends Button

var skip_to_scene

func _loadSkipToScene(scene):
	skip_to_scene = scene
	pass

func _on_SkipBtn_pressed():
	get_tree().change_scene(skip_to_scene)
	pass # Replace with function body.
