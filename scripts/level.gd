extends Node2D

var meteor_scene:PackedScene = load("res://scenes/meteor.tscn")
var laser_sceme:PackedScene = load("res://scenes/laser.tscn")

func _on_meteor_timer_timeout() -> void:
	var meteor = meteor_scene.instantiate()
	$Meteors.add_child(meteor)


func _on_player_laser(pos: Variant) -> void:
	var laser = laser_sceme.instantiate()
	$Lasers.add_child(laser)
	laser.position = pos
