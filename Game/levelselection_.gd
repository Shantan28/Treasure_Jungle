extends Control

var currentscreen = 5 
var Global = preload("res://Global.gd") 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	level_unlocked()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#connecting all buttons so when pressed goes to corresponding level 
func _on_level1_pressed() -> void:
	Global.levelrestart = 1
	Global.levelselect = 1
	get_tree().change_scene_to_file("res://levels/level_1.tscn")


func _on_level2_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/level_2.tscn")
	Global.levelrestart = 2
	Global.levelselect = 2


func _on_level3_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/level_3.tscn")
	Global.levelrestart = 3
	Global.levelselect = 3


func _on_level4_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/Level_4.tscn")
	Global.levelrestart = 4
	Global.levelselect = 4
	


func _on_level5_pressed() -> void:
	get_tree().change_scene_to_file("res://Level_5.tscn")
	Global.levelrestart = 5
	Global.levelselect = 5

func level_unlocked():
	if Global.levelselect == 1:
		$"HBoxContainer/level 1".show()
	elif Global.levelselect == 2:
		$"HBoxContainer/level 2".show()
		$"HBoxContainer/level 1".show()
	elif Global.levelselect == 3:
		$"HBoxContainer/level 3".show()
		$"HBoxContainer/level 2".show()
		$"HBoxContainer/level 1".show()
	elif Global.levelselect == 4:
		$"HBoxContainer2/level 4".show()
		$"HBoxContainer/level 3".show()
		$"HBoxContainer/level 2".show()
		$"HBoxContainer/level 1".show()
	elif Global.levelselect == 5:
		$"HBoxContainer2/5".show()
		$"HBoxContainer2/level 4".show()
		$"HBoxContainer/level 3".show()
		$"HBoxContainer/level 2".show()
		$"HBoxContainer/level 1".show()
	else: 
		$"HBoxContainer/level 2".hide()
		$"HBoxContainer/level 3".hide()
		$"HBoxContainer2/level 4".hide()
		$"HBoxContainer2/level 5".hide()
