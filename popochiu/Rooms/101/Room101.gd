tool
extends PopochiuRoom

const Data := preload('Room101State.gd')

var state: Data = preload('Room101.tres')



# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ GODOT ░░░░
# TODO: Overwrite Godot's methods


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
# What happens when Popochiu loads the room. At this point the room is in the
# tree but it is not visible
func on_room_entered() -> void:
	A.mx_explore_main.play_now(4)
	G.hide_interface()
	# fades out screen really quickly on load enter as there is no previous
	# room and then starts the audio track for room which fades in at the length
	# of 3 seconds and starts at the 5 second mark.
	get_prop("TitleText").get_node("pixelate").modulate.a = 0
	E.run([
		E.play_transition(TransitionLayer.FADE_IN, 0.01)
	])
	

# What happens when the room changing transition finishes. At this point the room
# is visible.
func on_room_transition_finished() -> void:
	# You can use yield(E.run([]), 'completed') to excecute a queue of instructions
	
	# wait for 1.2 seconds in darkness as music starts to fade in and then fade in
	# background image.
	
	yield(E.run([
		G.hide_interface(),
		E.wait(1.2),
		E.play_transition(TransitionLayer.FADE_OUT, 4),
	]), 'completed')
	
	# get titletext/pixelate props and tween it from 0 to 1 in modulate (fade in)
	yield(E.run([
			G.hide_interface(),
		create_tween().tween_property(
			get_prop("TitleText").get_node("pixelate"),
			"modulate:a",
			1.0, # target value
			5.0 # duration
			).from(0.0),
		E.wait(6),
	]), 'completed')
	

# What happens before Popochiu unloads the room.
# At this point, the screen is black, processing is disabled and all characters
# have been removed from the $Characters node.
func on_room_exited() -> void:
	pass


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ PUBLIC ░░░░
# You could put public functions here


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ PRIVATE ░░░░
# You could put private functions here
