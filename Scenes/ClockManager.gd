extends Node2D

@export var minuteHandle : AnimatedSprite2D
@export var hourHandle : AnimatedSprite2D
@export var timer : Timer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.start(36)
	minuteHandle.frame = 0
	hourHandle.frame = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	print(global.user_responses)
	print("Fin de tiempo!!!\n", 
		  "Pantalla negra\n",
		  "conteo de casos: ", global.user_responses.size(), 
		  "\nerrores\n",
		  "puntaje\n"
	)


func _on_minutes_frame_changed() -> void:
	if roundi(timer.time_left) % 60 == 0:
		hourHandle.frame += 1
