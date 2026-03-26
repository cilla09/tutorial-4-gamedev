extends Area2D

@export var sceneName: String

func _on_Area_Trigger_body_entered(body):
	var current_scene = get_tree().get_current_scene().get_name()
	if body.get_name() == "Player":
		if current_scene == sceneName:
			Globals.lives -=1
		if (Globals.lives == 0):
			get_tree().call_deferred("change_scene_to_file",(str("res://scenes/LoseScreen.tscn")))
		else:
			get_tree().call_deferred("change_scene_to_file",(str("res://scenes/" + sceneName + ".tscn")))
