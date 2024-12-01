#SingleInstance, Force

SetWorkingDir, % A_ScriptDir

Gui, OgurcyLoader:New, -Border -Caption -MaximizeBox -MinimizeBox -Resize -Theme, Ogurcy Hub Loader
Gui, Font, s11, Cascadia Mono
Gui, Add, Text, vGuiTitle x8 y0 w400 h23, Загрузчик Ogurcy Hub
Gui, Font, s17, Cascadia Mono
Gui, Add, Text, vMainText x5 y20 w400 h33, [0] Ждите
Gui, Font, s11, Cascadia Mono
Gui, Add, Text, vMainSubtext x8 y50 w400 h23, Ждите...
Gui, Show
GuiControl,, MainText, [1] Ждите
GuiControl,, MainSubtext, Инициализация...
Sleep, 200
GuiControl,, MainText, [2] Запуск
GuiControl,, MainSubtext, Запуск hub...
Run, %A_ScriptDir%\content\hub.bat
Sleep, 200
GuiControl,, MainText, [3] Ждите
GuiControl,, MainSubtext, Ожидание запуска...
WinWait, Ogurcy v3.3.2
GuiControl,, MainText, [|] Запущен
GuiControl,, MainSubtext, Ожидание закрытия...
While(WinExist(Ogurcy v3.3.2) > 0)
{
    GuiControl,, MainText, [|] Запущен
    Sleep, 150
    GuiControl,, MainText, [/] Запущен
    Sleep, 150
    GuiControl,, MainText, [-] Запущен
    Sleep, 150
    GuiControl,, MainText, [\] Запущен
    Sleep, 150
}
GuiControl,, MainText, [0] Закрытие
GuiControl,, MainText, [1] Подождите
GuiControl,, MainSubtext, Очистка кеша...
RunWait, %A_ScriptDir%\content\cclr.bat
GuiControl,, MainText, [2] Закрыт
GuiControl,, MainSubtext, Пока!
Sleep, 500
ExitApp