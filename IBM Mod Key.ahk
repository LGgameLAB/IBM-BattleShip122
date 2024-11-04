F13::Send, ^#{Left}
F14::Send, ^#{Right}
RAlt::LWin

#NoEnv
SendMode Input
SetTitleMatchMode 2
SetKeyDelay, -1  ; Speeds up input processing

F24::
    SendMode Input  ; Ensure the default SendMode for compatibility
    Input, letter, L1 T0.5 ; Capture the next key pressed within 0.5 seconds
    if (letter = "a")
        Send, {U+00E1} ; á
    else if (letter = "e")
        Send, {U+00E9} ; é
    else if (letter = "i")
        Send, {U+00ED} ; í
    else if (letter = "o")
        Send, {U+00F3} ; ó
    else if (letter = "u")
        Send, {U+00FA} ; ú
    else if (letter = "A")
        Send, {U+00C1} ; Á
    else if (letter = "E")
        Send, {U+00C9} ; É
    else if (letter = "I")
        Send, {U+00CD} ; Í
    else if (letter = "O")
        Send, {U+00D3} ; Ó
    else if (letter = "U")
        Send, {U+00DA} ; Ú
    else
        Send, {U+00B4}%letter% ; Sends the accent mark followed by any other key
return

; AutoHotkey script to open Netflix in Google Chrome with F16

F16::
{
    Run, chrome.exe "https://www.netflix.com"
    return
}

F17::
{
    Run, chrome.exe "https://www.youtube.com"
    return
}

; AutoHotkey script to open Task Manager with F15

F15::
{
    Run, taskmgr.exe
    return
}

; Map the scancode 138 key to open VS Code
SC079::
{
    Run, "C:\Users\mende\AppData\Local\Programs\Microsoft VS Code\Code.exe"
    return
}