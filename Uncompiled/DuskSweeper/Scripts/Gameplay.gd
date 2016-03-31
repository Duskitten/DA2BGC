
extends Node2D

var KeyFlipswitch = 1

var Move_Up_Stat = 0
var Move_Down_Stat = 0
var Move_Left_Stat = 0
var Move_Right_Stat = 0

var Turn_amount = 1
var Turn_Number = 0


func _ready():
	set_process(true)

func _process(delta):
	var Kitty = get_node("Backplate/Dusk")
	##Globals Check
	var Left_Stat = Globals.get("Left_Stat")
	var Right_Stat = Globals.get("Right_Stat")
	var Up_Stat = Globals.get("Up_Stat")
	var Down_Stat = Globals.get("Down_Stat")
	
	##Buttons
	var Button_Left = get_node("Backplate/Controls/Buttons/Left")
	var Button_Right = get_node("Backplate/Controls/Buttons/Right")
	var Button_Up =  get_node("Backplate/Controls/Buttons/Up")
	var Button_Down = get_node("Backplate/Controls/Buttons/Down")
	var Button_Dig = get_node("Backplate/Controls/Buttons/Dig")
	##Keys
	var Key_Left = Input.is_key_pressed(KEY_A)
	var Key_Right = Input.is_key_pressed(KEY_D)
	var Key_Up =  Input.is_key_pressed(KEY_W)
	var Key_Down = Input.is_key_pressed(KEY_S)
	var Key_Dig = Input.is_key_pressed(KEY_K)
	##Alt Keys
	var Alt_Key_Left = Input.is_key_pressed(KEY_LEFT)
	var Alt_Key_Right = Input.is_key_pressed(KEY_RIGHT)
	var Alt_Key_Up =  Input.is_key_pressed(KEY_UP)
	var Alt_Key_Down = Input.is_key_pressed(KEY_DOWN)
	var Alt_Key_Dig = Input.is_key_pressed(KEY_X)
	##Alt2 Keys
	var Alt2_Key_Left = Input.is_key_pressed(KEY_J)
	var Alt2_Key_Right = Input.is_key_pressed(KEY_L)
	var Alt2_Key_Up =  Input.is_key_pressed(KEY_I)
	var Alt2_Key_Down = Input.is_key_pressed(KEY_K)
	var Alt2_Key_Dig = Input.is_key_pressed(KEY_A)
	
	
	
	if (Key_Up or Alt_Key_Up or Alt2_Key_Up):
		if Up_Stat == 1:
			if KeyFlipswitch == 1:
				Kitty.set_pos(Vector2(Kitty.get_pos().x, Kitty.get_pos().y - 32))
				KeyFlipswitch = 0
				Move_Up_Stat = 1
	else:
		Move_Up_Stat = 0
	
	if (Key_Down or Alt_Key_Down or Alt2_Key_Down):
		if Down_Stat == 1:
			if KeyFlipswitch == 1:
				Kitty.set_pos(Vector2(Kitty.get_pos().x, Kitty.get_pos().y + 32))
				KeyFlipswitch = 0
				Move_Down_Stat = 1
	else:
		Move_Down_Stat = 0
	
	if (Key_Right or Alt_Key_Right or Alt2_Key_Right):
		if Right_Stat == 1:
			if KeyFlipswitch == 1:
				Kitty.set_pos(Vector2(Kitty.get_pos().x + 32, Kitty.get_pos().y))
				KeyFlipswitch = 0
				Move_Right_Stat = 1
	else:
		Move_Right_Stat = 0
	
	if (Key_Left or Alt_Key_Left or Alt2_Key_Left):
		if Left_Stat == 1:
			if KeyFlipswitch == 1:
				Kitty.set_pos(Vector2(Kitty.get_pos().x - 32, Kitty.get_pos().y))
				KeyFlipswitch = 0
				Move_Left_Stat = 1
	else:
		Move_Left_Stat = 0
	if KeyFlipswitch == 0 && Move_Left_Stat == 0 && Move_Down_Stat == 0 && Move_Right_Stat == 0 && Move_Up_Stat == 0:
		KeyFlipswitch = 1