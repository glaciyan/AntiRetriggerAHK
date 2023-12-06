#Requires AutoHotkey v2.0

; When u is sent du is sent again. We need to put a very small delay on d again

Sleeping := false

*XButton1::
{
    global Sleeping
    if (!Sleeping)
        Send "{XButton1 Down}"
    Else
        Sleeping := false ; In Case Sleeping Fails, we stopped a single retrigger
}

*XButton1 Up::
{
    global Sleeping
    Send "{XButton1 Up}"
    Sleeping := true
    Sleep 100
    Sleeping := false
}
