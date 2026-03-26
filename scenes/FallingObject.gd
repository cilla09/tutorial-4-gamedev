extends Area2D

@export var sceneName = "LoseScreen"

func _on_FallArea_body_entered(body):
	var current_scene = get_tree().get_current_scene().get_name()
	if body.get_name() == "Player":
		Globals.lives -=1
	if (Globals.lives == 0):
		get_tree().call_deferred("change_scene_to_file",(str("res://scenes/LoseScreen.tscn")))
