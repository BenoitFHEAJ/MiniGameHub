extends Button
class_name GameButton

## Drag a mini-game scene into this slot in the Inspector.
@export var target_scene: PackedScene

func _ready() -> void:
	pressed.connect(_on_pressed)

func _on_pressed() -> void:
	if target_scene == null:
		push_warning("GameButton '%s' has no target_scene assigned." % name)
		return
	get_tree().change_scene_to_packed(target_scene)
