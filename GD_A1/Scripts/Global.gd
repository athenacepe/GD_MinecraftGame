extends Node

onready var lives setget set_lives, get_lives
onready var pie setget set_pie, get_pie
onready var score setget set_score, get_score

func _ready():
	lives = 3
	pie = 3
	score = 0
	pass 

#Set & Get Method - Lives
func set_lives(value):
	lives = value
	pass

func get_lives():
	return lives
	pass

#Set & Get Method - Pie
func set_pie(value):
	pie = value
	pass

func get_pie():
	return pie
	pass

#Set & Get Method - Score
func set_score(value):
	score = value
	pass

func get_score():
	return score
	pass
