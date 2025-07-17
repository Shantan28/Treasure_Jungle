extends Control

var Global = preload("res://Global.gd") 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_LS_pressed() -> void:
	get_tree().change_scene_to_file("res://Game/levelselection .tscn")
	
func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Game/main menu.tscn")
	
func _on_exit_pressed() -> void:
	get_tree().change_scene_to_file("res://Game/Exit_Scene.tscn")

func _on_restart_pressed() -> void:
	if Global.levelrestart == 1:
		get_tree().change_scene_to_file("res://levels/level_1.tscn")
	elif Global.levelrestart == 2:
		get_tree().change_scene_to_file("res://levels/level_2.tscn")
	elif Global.levelrestart == 3:
		get_tree().change_scene_to_file("res://levels/level_3.tscn")
	elif Global.levelrestart == 4:
		get_tree().change_scene_to_file("res://levels/level_4.tscn")
	else:
		get_tree().change_scene_to_file("res://Level_5.tscn")
