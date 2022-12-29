Option Explicit

Dim dtNow, dtWorkDone, timeUntilWorkIsOver

dtNow = Time()
dtWorkDone = "17:00:00"
timeUntilWorkIsOver = DateDiff("s", dtNow, dtWorkDone)

Dim powerToysAwakeExe, displayOn, timeLimit
displayOn = " --display-on "
timeLimit = " --time-limit " & timeUntilWorkIsOver & " "
powerToysAwakeExe = """C:\Program Files\PowerToys\modules\Awake\PowerToys.Awake.exe"""

CreateObject("Wscript.Shell").Run "taskkill /IM ""PowerToys.Awake.exe""", 0, False 

CreateObject("Wscript.Shell").Run powerToysAwakeExe & displayOn & timeLimit, 0, False
