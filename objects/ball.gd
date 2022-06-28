extends RigidBody2D


func _ready():
	get_node("VisibilityNotifier2D").connect("screen_exited", self, "_on_screen_exited")

func _on_screen_exited():
	queue_free()
