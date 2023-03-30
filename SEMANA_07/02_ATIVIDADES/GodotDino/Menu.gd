extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_select"):
		get_tree().change_scene_to(load("res://Justificativa.tscn"))
