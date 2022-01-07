;Edit text in Clipboard
global ecWidth := 650
global ecHeight := 400
global EC_TITLE := "Clipboard Edit"

global ecEditWidth := 640
global ecEditHeight := 355
global clipboardBoxText := Clipboard

Gui, CE:Font, s12
Gui, CE:Add, Button, gclipboardFinishButton x4 y5 w80, &Finish
Gui, CE:Add, Button, gtrimBtnClick x+6 yp w80, &Trim

Gui, CE:Font, s11
Gui, CE:Add, Edit, HScroll VScroll x4 y40 w%ecEditWidth% h%ecEditHeight% vclipboardBoxText gclipboardTextChanged, %Clipboard%

; Gui, CE:+AlwaysOnTop
Gui, CE:+Resize
Gui, CE:Color, Silver

clipboardEditVis := 0

toggleGUI(clipboardEditVis, "CE", ecWidth, ecHeight, EC_TITLE)