
extends Panel
##Changeable Variables
var Selected_anim_player = null
var Selected = ""
var Selected_new = ""

var Char_anim_player = null
var Char = ""
var Char_new = ""

func _ready():
	set_process(true)  ## Sets Loop On
	
	
	
func _process(delta):
	##Repeated Variables
	Char_anim_player = get_node("Char/AnimationPlayer")
	Selected_anim_player = get_node("Selected/AnimationPlayer")
	
	if Selected != Selected_new:  ##Keeps Animation Playing without Needing to restart on first frame
		Selected_new = Selected  
		Selected_anim_player.play(Selected) ##Play the Animation
	
	if Char != Char_new:
		Char_new = Char
		Char_anim_player.play(Char)
	
	
	
	##Constants
	Selected = "Sq_spread"
	Char = "Idle"
	

