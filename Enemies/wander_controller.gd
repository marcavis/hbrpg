extends Node2D

@export var wander_range: int = 32
@onready var start_position = global_position
@onready var target_position = global_position
@onready var timer: Timer = $Timer

func _ready() -> void:
	update_target_position()

func update_target_position():
	var target_vector = Vector2(randi_range(-wander_range, wander_range), randi_range(-wander_range, wander_range))
	target_position = start_position + target_vector
	#print(start_position, target_position, self)

func get_time_left():
	return timer.time_left
	
func set_wander_timer(duration: float) -> void:
	timer.start(duration)

func _on_timer_timeout() -> void:
	update_target_position()
