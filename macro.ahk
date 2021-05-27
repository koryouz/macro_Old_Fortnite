#SingleInstance force
#MaxHotkeysPerInterval 200
NumpadMult::Suspend // Multiplier is the key to suspend the script

LShift:: // YOUR EDIT KEY
{
    if (x=1)
    {
    Goto, MyLabel
    }
send {u} // YOUR SECOND EDIT KEY
n=1
MyLabel:
x=0
KeyWait LShift
return
}


~*Lbutton:: // YOUR DRAW KEY
loop
{
	if (n=1)
	{
        loop
	{
		if !GetKeyState("LButton", "P") // YOUR DRAW KEY
		{
		send {u} // YOUR SECOND EDIT KEY
		n=0
		x=0
		break
		}

		if !GetKeyState("LShift", "P") // YOUR DRAW KEY
		{
		x=1
		}
	sleep 15
	}
	}
sleep 15
}

// THIS PART IS TO RESET THE SCRIPT (n=0)//

~a:: // YOUR 1rst structure KEY (wall/cone/floor/stair)
{
n=0
return
}

~e:: // YOUR 2nd structure KEY (wall/cone/floor/stair)
{
n=0
return
}

~v:: // YOUR 3rd structure KEY (wall/cone/floor/stair)
{
n=0
return
}

~b::  // YOUR 4th structure KEY (wall/cone/floor/stair)
{
n=0
return
}

~1::  // ALL YOUR WEAPONS KEYBINDS
{
n=0
return
}

~2::	// ALL YOUR WEAPONS KEYBINDS
{
n=0
return
}

~3::	// ALL YOUR WEAPONS KEYBINDS
{
n=0
return
}

~4::	// ALL YOUR WEAPONS KEYBINDS
{
n=0
return
}

~XButton1::	 // ALL YOUR WEAPONS KEYBINDS
{
n=0
return
}
