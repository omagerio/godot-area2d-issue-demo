extends Node2D

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action("select") && event.is_pressed():
		$background.visible = true;
		await get_tree().create_timer(0.5).timeout;
		$background.visible = false;
