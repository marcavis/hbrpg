extends Area2D

var player = null #:
	#get: 
		#return player
	#set(value):
		#player = value


#func _on_physics_process()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func can_see_player() -> bool:
	return player != null


func _on_body_entered(body: Node2D) -> void:
	player = body


func _on_body_exited(body: Node2D) -> void:
	player = null
