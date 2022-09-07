 function configure {
    Set-location ["C:\ProgramFiles\Dell\CommandUpdate\dcu-cli.exe"]
    param (
    -silent -updateType="firmware,driver,application,utility,others" -scheduleWeekly="Fri,17:00" -userConsent="disable" -updateSeverity="security,critical,recommended" -scheduleAction="DownloadInstallAndNotify" -lockSettings="enable" -autoSuspendBitlocker="enable"
    )
}

"%ProgramFiles%\Dell\CommandUpdate\dcu-cli.exe" /scan -silent -userConsent="disable" -outputLog="c:\Dell\CommandUpdate\DCUScanOutput.log"

"%ProgramFiles%\Dell\CommandUpdate\dcu-cli.exe" /applyUpdates -silent -userConsent=disable -autoSuspendBitLocker=enable -outputLog="c:\Dell\CommandUpdate\DCUUpdateOutput.log"
