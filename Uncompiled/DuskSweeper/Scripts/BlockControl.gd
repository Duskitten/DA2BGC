
extends Node2D

export var MoveDirection = 0 ## 0,idle,1,Down,2,Up,3,Left,4,Right,5,In,6,Out
export var FinalFrame = 0

var Anim_plr = null
var Anim = "Rise"
var Anim_new = ""

func _ready():
	set_process(true)
	pass

func _process(delta):
	Anim_plr = get_node("AnimationPlayer")
	
	if Anim_new != Anim:
		Anim_new = Anim
		Anim_plr.play(Anim)
	
	if Anim_plr.is_playing() == false:
		if Anim == "Lower":
			Anim = "Rise"
		elif Anim == "Rise":
			Anim = "Lower"
	
	if MoveDirection == 6:
		pass
	
	
	
	
	pass
