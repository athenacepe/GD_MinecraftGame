extends Panel

export(String, FILE, "*.tscn") var skip_to_scene
export(String, FILE, "*.txt") var story_line_file
export (Texture) var person

onready var stsNode = get_node("SkipToScene")
onready var cbNode = get_node("Chatbox")
onready var pNode = get_node("Pewds")

# Called when the node enters the scene tree for the first time.
func _ready():
	stsNode._loadSkipToScene(skip_to_scene)
	cbNode._loadDialogFromFile(story_line_file)
	pNode.texture = person
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
