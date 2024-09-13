extends Node2D

@export var minuteHandle : AnimatedSprite2D
@export var hourHandle : AnimatedSprite2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	minuteHandle.frame = 0
	hourHandle.frame = 0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
