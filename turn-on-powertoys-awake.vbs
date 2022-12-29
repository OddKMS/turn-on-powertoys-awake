Option Explicit

Dim dtNow, dtWorkDone, timeUntilWorkIsOver

dtNow = Time()
dtWorkDone = "17:00:00"
timeUntilWorkIsOver = DateDiff("s", dtNow, dtWorkDone)

Dim keepAwakeExe, displayOn, timeLimit
displayOn = " --display-on "
timeLimit = " --time-limit " & timeUntilWorkIsOver & " "
keepAwakeExe = """C:\Program Files\PowerToys\modules\Awake\PowerToys.Awake.exe"""

CreateObject("Wscript.Shell").Run "taskkill /fi ""WINDOWTITLE eq PowerToys Awake"

CreateObject("Wscript.Shell").Run keepAwakeExe & displayOn & timeLimit, 0, True
