var __are_equal = null
var are_equal:
	set = set_are_equal, get = get_are_equal
var __summary = null
var summary:
	set = set_summary, get = get_summary
var __max_differences = 30
var max_differences:
	set = set_max_differences, get = get_max_differences
var __differences = {}
var differences:
	set = set_differences, get = get_differences

func _block_set(which, val):
	#print(get_stack())
	push_error(str('cannot set ', which, ', value [', val, '] ignored.'))

## Getters and Setters:

func get_are_equal():
	return __are_equal

func set_are_equal(r_eq):
	__are_equal = r_eq

func get_summary():
	return __summary

func set_summary(smry):
	__summary = smry

func get_max_differences():
	return __max_differences

func set_max_differences(max_diff):
	__max_differences = max_diff

func get_differences():
	return __differences

func set_differences(diffs):
	### this does not work with 4.0 at the moment, set called even on index access:
	#_block_set('differences', diffs)
	__differences = diffs

## Other functions:

func _to_string():
	return str(summary) # could be null, gotta str it.

func get_total_count():
	pass

func get_different_count():
	pass

func get_short_summary():
	return summary

func get_brackets():
	return null

