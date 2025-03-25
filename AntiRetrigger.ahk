#Requires AutoHotkey v2.0

global debounceTime := 170  ; 170ms debounce time
global lastReleaseTime := 0

*XButton1::
{
    global debounceTime, lastReleaseTime

    if (A_TickCount - lastReleaseTime < debounceTime) {
        return
    }

    Send("{XButton1 down}")

    KeyWait("XButton1")  ; Wait for button to be released

    Send("{XButton1 up}")

    lastReleaseTime := A_TickCount  ; Save the release time
}
