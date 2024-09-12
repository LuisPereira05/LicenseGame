extends Node2D

@export var licTab : Node2D
@export var infTab : Node2D

var tabs
var curTab : int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	tabs = Array(get_children(false))
	print("size: ", tabs.size())
	curTab = 0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_was_clicked(action: String, buttonName : String) -> void:
	if action == "next":
		if buttonName != "next":
			global.sendInfo["license"] = buttonName
		curTab += 1
		to_inf_tab(curTab)
	print(global.sendInfo["license"])

func to_inf_tab(index : int):
	for i in range(0, tabs.size()):
		if i != index:
			tabs[i].hide()
		else:
			tabs[i].show()
