extends Label

func _process(delta: float) -> void:
	self.text = "Lives : " + str(Globals.lives)
