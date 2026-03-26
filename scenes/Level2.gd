extends Area2D

@export var sceneName: String = "Level2"

func _on_Area_Trigger_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene_to_file(str("res://scenes/" + sceneName + ".tscn"))


func _on_button_pressed() -> void:
	pass # Replace with function body.


func _on_pressed() -> void:
	pass # Replace with function body.
