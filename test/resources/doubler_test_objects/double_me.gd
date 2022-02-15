extends Node2D

var _value = 0


signal signal_signal

func _ready():
	pass

func _init():
	add_user_signal("user_signal")

func get_value():
	return _value

func set_value(val):
	_value = val

func has_one_param(_one):
	pass

func has_two_params_one_default(_one, _two=null):
	pass

func get_position():
	return super()

func has_string_and_array_defaults(_string_param = "asdf", _array_param = [1]):
	pass
