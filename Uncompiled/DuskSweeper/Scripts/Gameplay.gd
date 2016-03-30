
extends Node2D

var KeyFlipswitch = 1
var CurrentKeyType = 0

func _ready():
	set_process(true)

func _process(delta):
	var Kitty = get_node("Dusk")
	##Buttons
	var Button_Left = get_node("Controls/Buttons/Left")
	var Button_Right = get_node("Controls/Buttons/Right")
	var Button_Up =  get_node("Controls/Buttons/Up")
	var Button_Down = get_node("Controls/Buttons/Down")
	var Button_Dig = get_node("Controls/Buttons/Dig")
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
	
	
	if KeyFlipswitch == 1 :
		if CurrentKeyType == 0:  ##Keys
			print("")
		elif CurrentKeyType == 1:  ##Alt Keys
			print("")
		elif CurrentKeyType == 2:  ##Secondary Alt Keys
			print("")
	elif !Button_Left.is_pressed()&&!Button_Right.is_pressed()&&!Button_Up.is_pressed()&&!Button_Down.is_pressed()&&!Key_Left&&!Key_Right&&!Key_Up&&!Key_Down:
		KeyFlipswitch = 1