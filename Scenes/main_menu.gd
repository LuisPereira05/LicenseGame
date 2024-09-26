extends Control

@export var anim : AnimatedSprite2D
@export var interface : MarginContainer
@export var player : AnimationPlayer
@export var engine : AudioStreamPlayer2D

func _on_play_pressed():
	anim.play()
	engine.play()
	interface.hide()

func _ready() -> void:
	player.play("Title")
	

func _on_quit_pressed():
	get_tree().quit()


func _on_fondo_animation_finished() -> void:
	
	get_tree().change_scene_to_file("res://Scenes/Testing.tscn")
