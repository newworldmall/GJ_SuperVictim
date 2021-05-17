extends Node2D
var dialog = "Hey baby!"
var dialog_size = "small"
var is_talking = false

var dialogs = {1: ["small", "Whassup."], 
2: ["big", "My friends GBO and DJ Buc-ee left me out here to watch the claim..."], 
3: ["small", "O-BBBBOOOY!"]}
var index = 0
func _ready():
	add_to_group("npc")

func make_dialog():
	if get_parent().cutscene_begun == false:
		get_parent().begin_cutscene()
		
	$oboy.playing = true
	

func _rotate_dialog():
	if index < dialogs.size():
		index += 1
	else:
		index = 1
	dialog_size = dialogs[index][0]
	dialog = dialogs[index][1]
