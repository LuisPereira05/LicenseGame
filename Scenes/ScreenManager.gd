extends Node2D

@export var licTab : Node2D
@export var infTab : Node2D

var tabs : Array[Node]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	tabs = get_children(false)
	global.current_tab = 0



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


#func _on_button_was_clicked(action: String, buttonName : String) -> void:
	#if action == "next":
		#if buttonName != "next":
			#global.sendInfo["license"] = buttonName
		#curTab += 1
		#to_tab(curTab)
	#elif action == "back":
		#curTab -= 1
		#to_tab(curTab)
	#print("license: ", global.sendInfo["license"], "\n")

func _on_button_was_clicked(_action: String, buttonName : String, tab_index: int) -> void:
	global.current_tab = tab_index
	tabs.map(func(tab): 
			if tab == tabs[tab_index] : 
				tab.show() 
			else: 
				tab.hide())
	if buttonName != "next":
		global.sendInfo["license"] = buttonName
