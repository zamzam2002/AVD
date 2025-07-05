[
  {
    "name": "avdBuiltInScript_installLanguagePacks",
    "type": "File",
    "destination": "C:\\AVDImage\\installLanguagePacks.ps1",
    "sourceUri": "https://raw.githubusercontent.com/Azure/RDS-Templates/master/CustomImageTemplateScripts/CustomImageTemplateScripts_2024-03-27/InstallLanguagePacks.ps1"
  },
  {
    "name": "avdBuiltInScript_installLanguagePacks-parameter",
    "type": "PowerShell",
    "inline": [
      "C:\\AVDImage\\installLanguagePacks.ps1 -LanguageList \"English (Australia)\""
    ],
    "runAsSystem": true,
    "runElevated": true
  },
  {
    "name": "avdBuiltInScript_installLanguagePacks-windowsUpdate",
    "type": "WindowsUpdate"
  },
  {
    "name": "avdBuiltInScript_installLanguagePacks-windowsRestart",
    "type": "WindowsRestart",
    "restartCheckCommand": "",
    "restartCommand": "",
    "restartTimeout": "10m"
  },
  {
    "name": "avdBuiltInScript_setDefaultLanguage",
    "type": "File",
    "destination": "C:\\AVDImage\\setDefaultLanguage.ps1",
    "sourceUri": "https://raw.githubusercontent.com/Azure/RDS-Templates/master/CustomImageTemplateScripts/CustomImageTemplateScripts_2024-03-27/SetDefaultLang.ps1"
  },
  {
    "name": "avdBuiltInScript_setDefaultLanguage-parameter",
    "type": "PowerShell",
    "inline": [
      "C:\\AVDImage\\setDefaultLanguage.ps1 -Language \"English (Australia)\""
    ],
    "runAsSystem": true,
    "runElevated": true
  },
  {
    "name": "avdBuiltInScript_setDefaultLanguage-windowsUpdate",
    "type": "WindowsUpdate"
  },
  {
    "name": "avdBuiltInScript_setDefaultLanguage-windowsRestart",
    "type": "WindowsRestart",
    "restartCheckCommand": "",
    "restartCommand": "",
    "restartTimeout": "5m"
  },
  {
    "destination": "C:\\AVDImage\\enableFslogix.ps1",
    "name": "avdBuiltInScript_enableFsLogix",
    "sourceUri": "https://raw.githubusercontent.com/Azure/RDS-Templates/master/CustomImageTemplateScripts/CustomImageTemplateScripts_2024-03-27/FSLogix.ps1",
    "type": "File"
  },
  {
    "inline": [
      "C:\\AVDImage\\enableFslogix.ps1 -FSLogixInstaller \"https://aka.ms/fslogix_download\" -VHDSize \"15000\" -ProfilePath \"\\\\saaeavduserprofiledata.file.core.windows.net\\fsl-pf-ae-avd\""
    ],
    "name": "avdBuiltInScript_enableFsLogix-parameter",
    "runAsSystem": true,
    "runElevated": true,
    "type": "PowerShell"
  },
  {
    "name": "avdBuiltInScript_screenCaptureProtection",
    "type": "File",
    "destination": "C:\\AVDImage\\screenCaptureProtection.ps1",
    "sourceUri": "https://raw.githubusercontent.com/Azure/RDS-Templates/master/CustomImageTemplateScripts/CustomImageTemplateScripts_2024-03-27/ScreenCaptureProtection.ps1"
  },
  {
    "inline": [
      "C:\\AVDImage\\screenCaptureProtection.ps1 -block \"BlockBoth\""
    ],
    "name": "avdBuiltInScript_removeOfficeApps-parameter",
    "runAsSystem": true,
    "runElevated": true,
    "type": "PowerShell"
  },
  {
    "destination": "C:\\AVDImage\\TeamsOptimization.ps1",
    "name": "avdBuiltInScript_teamsOptimization",
    "sourceUri": "https://raw.githubusercontent.com/Azure/RDS-Templates/master/CustomImageTemplateScripts/CustomImageTemplateScripts_2024-03-27/TeamsOptimization.ps1",
    "type": "File"
  },
  {
    "inline": [
      "C:\\AVDImage\\TeamsOptimization.ps1 -WebRTCInstaller \"https://aka.ms/msrdcwebrtcsvc/msi\" -VCRedistributableLink \"https://aka.ms/vs/17/release/vc_redist.x64.exe\" -TeamsBootStrapperUrl \"https://go.microsoft.com/fwlink/?linkid=2243204&clcid=0x409\""
    ],
    "name": "avdBuiltInScript_teamsOptimization-parameter",
    "runAsSystem": true,
    "runElevated": true,
    "type": "PowerShell"
  },
  {
    "destination": "C:\\AVDImage\\configureSessionTimeouts.ps1",
    "name": "avdBuiltInScript_configureSessionTimeouts",
    "sourceUri": "https://raw.githubusercontent.com/Azure/RDS-Templates/master/CustomImageTemplateScripts/CustomImageTemplateScripts_2024-03-27/ConfigureSessionTimeoutsV2.ps1",
    "type": "File"
  },
  {
    "name": "avdBuiltInScript_configureSessionTimeouts-parameter",
    "inline": [
      "C:\\AVDImage\\configureSessionTimeouts.ps1 -MaxDisconnectionTime \"60\" -MaxIdleTime \"60\" -MaxConnectionTime \"0\" -RemoteAppLogoffTimeLimit \"60\""
    ],
    "runAsSystem": true,
    "runElevated": true,
    "type": "PowerShell"
  },
  {
    "name": "avdBuiltInScript_disableAutoUpdates",
    "runElevated": true,
    "runAsSystem": true,
    "scriptUri": "https://raw.githubusercontent.com/Azure/RDS-Templates/master/CustomImageTemplateScripts/CustomImageTemplateScripts_2024-03-27/DisableAutoUpdates.ps1",
    "type": "PowerShell"
  },
  {
    "name": "avdBuiltInScript_removeAppxPackages",
    "type": "File",
    "destination": "C:\\AVDImage\\removeAppxPackages.ps1",
    "sourceUri": "https://raw.githubusercontent.com/Azure/RDS-Templates/master/CustomImageTemplateScripts/CustomImageTemplateScripts_2024-03-27/RemoveAppxPackages.ps1"
  },
  {
    "name": "avdBuiltInScript_removeAppxPackages-parameter",
    "type": "PowerShell",
    "inline": [
      "C:\\AVDImage\\removeAppxPackages.ps1 -AppxPackages \"Clipchamp.Clipchamp\",\"Microsoft.BingNews\",\"Microsoft.BingWeather\",\"Microsoft.GamingApp\",\"Microsoft.GetHelp\",\"Microsoft.Getstarted\",\"Microsoft.MicrosoftOfficeHub\",\"Microsoft.MicrosoftSolitaireCollection\",\"Microsoft.MSPaint\",\"Microsoft.People\",\"Microsoft.PowerAutomateDesktop\",\"Microsoft.ScreenSketch\",\"Microsoft.SkypeApp\",\"Microsoft.Todos\",\"Microsoft.Windows.Photos\",\"Microsoft.WindowsAlarms\",\"Microsoft.WindowsCalculator\",\"Microsoft.WindowsCamera\",\"Microsoft.windowscommunicationsapps\",\"Microsoft.WindowsFeedbackHub\",\"Microsoft.WindowsMaps\",\"Microsoft.WindowsSoundRecorder\",\"Microsoft.WindowsTerminal\",\"Microsoft.Xbox.TCUI\",\"Microsoft.XboxGameOverlay\",\"Microsoft.XboxGamingOverlay\",\"Microsoft.XboxIdentityProvider\",\"Microsoft.XboxSpeechToTextOverlay\",\"Microsoft.YourPhone\",\"Microsoft.ZuneMusic\",\"Microsoft.ZuneVideo\",\"Microsoft.XboxApp\""
    ],
    "runAsSystem": true,
    "runElevated": true
  }
]
