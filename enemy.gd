extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Area2D.input_event.connect(onInput);
	pass # Replace with function body.

func onInput(viewport:Viewport, event:InputEvent, shapeId):
	if viewport.is_input_handled(): return
	if event.is_action("select") && event.is_pressed():
		viewport.set_input_as_handled();
		$overlay.visible = true;
		await get_tree().create_timer(0.5).timeout;
		$overlay.visible = false;
