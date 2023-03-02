write-host "  _      ___      ___             "
write-host " | | /| / (_)__  / _ \_______ ___ "
write-host " | |/ |/ / / _ \/ ___/ __/ -_) _ \"
write-host " |__/|__/_/_//_/_/  /_/  \__/ .__/"
write-host "                           /_/    "

$Bloatware = @(
	"Microsoft3DViewer"
	"BingWeather"
	"GetHelp"
	"GetServices"
	"MicrosoftSolitaireCollection"
	"OneNote"
	"People"
	"SkypeApp"
	"Wallet"
	"WindowsAlarms"
	"windowscommunicationsapps"
	"WindowsFeedbackHub"
	"WindowsMaps"
	"WindowsSoundRecorder"
	"XboxApp"
	"ScreenSketch"
	"TCUI"
	"XboxGameOverlay"
    "XboxGameCallableUI"
	"XboxSpeechToTextOverlay"
	"MixedReality.Portal"
	"ZuneMusic"
    "ZuneVideo"
	"Getstarted"
	"MicrosoftOfficeHub"
	"Advertising"
)
	
foreach ($Bloat in $Bloatware) {
	Get-AppxPackage "*$Bloat*" | Remove-AppxPackage -ErrorAction SilentlyContinue
	Get-AppxProvisionedPackage -Online | Where-Object DisplayName -like "*$Bloat*" | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
	Write-Host "Trying to remove $Bloat."
}
