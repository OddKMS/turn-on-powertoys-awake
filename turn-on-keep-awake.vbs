Option Explicit

Function ConvertTimeToSeconds(value)
    Dim dateTime: dateTime = TimeValue(value)
    Dim numOfHours: numOfHours = Hour(dateTime)
    Dim numOfMinutes: numOfMinutes = Minute(dateTime)
    Dim numOfSeconds: numOfSeconds = Second(dateTime)
    ConvertTimeToSeconds = (((numOfHours * 60) * 60) + (numOfMinutes * 60) + numOfSeconds)
End Function

Dim dtNow, dtWorkDone, timeUntilWorkIsOver

dtNow = Time()
dtWorkDone = "17:00:00"
timeUntilWorkIsOver = DateDiff("s", dtNow, dtWorkDone)

Dim keepAwakeExe, displayOn, timeLimit
displayOn = " --display-on "
timeLimit = " --time-limit " & timeUntilWorkIsOver & " "
keepAwakeExe = """C:\Program Files\PowerToys\modules\Awake\PowerToys.Awake.exe"""

CreateObject("Wscript.Shell").Run keepAwakeExe & displayOn & timeLimit, 0, False
