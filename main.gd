extends Node2D


# Declare member variables here. Examples:
var ballScene = preload("res://objects/ball.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("quit"):
		get_tree().quit()
	if event.is_action_pressed("select_1"):
		var ball = ballScene.instance()
		ball.position = get_viewport().get_mouse_position()
		add_child(ball)
