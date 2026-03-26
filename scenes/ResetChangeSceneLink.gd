extends LinkButton

@export var sceneName: String

func _on_pressed():
	get_tree().change_scene_to_file(str("res://scenes/" + sceneName + ".tscn"))
	Globals.lives = 3
