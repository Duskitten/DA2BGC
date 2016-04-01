
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
	Globals.set("Is_moving", false)
	
	
func _process(delta):
	##Repeated Variables
	var moving = Globals.get("Is_moving")
	var selectedBox = get_node("Selected")
	
	
	Char_anim_player = get_node("Char_Body/Char/AnimationPlayer")
	Selected_anim_player = get_node("Selected/AnimationPlayer")
	var Kitty = self
	var Arrow_Up = get_node("Arrow_Up")
	var Arrow_Down = get_node("Arrow_Down")
	var Arrow_Left = get_node("Arrow_Left")
	var Arrow_Right = get_node("Arrow_Right")
	
	if Selected != Selected_new:  ##Keeps Animation Playing without Needing to restart on first frame
		Selected_new = Selected  
		Selected_anim_player.play(Selected) ##Play the Animation
	
	if Char != Char_new:
		Char_new = Char
		Char_anim_player.play(Char)
	
	
	##Find and Remove arrow when needed
	if moving == false:
		if Kitty.get_pos().y == 32:
			Arrow_Up.hide()
			Globals.set("Up_Stat", 0)
		else:
			Arrow_Up.show()
			Globals.set("Up_Stat", 1)
		
		if Kitty.get_pos().x == 32:
			Arrow_Left.hide()
			Globals.set("Left_Stat", 0)
		else:
			Arrow_Left.show()
			Globals.set("Left_Stat", 1)
		
		if Kitty.get_pos().x == 256:
			Arrow_Right.hide()
			Globals.set("Right_Stat", 0)
		else:
			Arrow_Right.show()
			Globals.set("Right_Stat", 1)
		
		if Kitty.get_pos().y == 256:
			Arrow_Down.hide()
			Globals.set("Down_Stat", 0)
		else:
			Arrow_Down.show()
			Globals.set("Down_Stat", 1)
	elif moving == true: 
		Arrow_Down.hide()
		Arrow_Left.hide()
		Arrow_Right.hide()
		Arrow_Up.hide()
		selectedBox.hide()
	
	
	
	##Constants
	Selected = "Sq_spread"
	Char = "Move_Left"
	

