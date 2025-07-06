#######################################
#    Install English (Australia)     #
#######################################

function Install-LanguagePack {

    BEGIN {
        $stopwatch = [System.Diagnostics.Stopwatch]::StartNew()
        Write-host "Starting AVD AIB Customization: Install English (Australia): $((Get-Date).ToUniversalTime())"

        # Language dictionary
        $LanguagesDictionary = @{
            "English (Australia)" = "en-AU"
        }

        # Disable conflicting scheduled tasks
        Disable-ScheduledTask -TaskName "\Microsoft\Windows\LanguageComponentsInstaller\Installation" -ErrorAction SilentlyContinue
        Disable-ScheduledTask -TaskName "\Microsoft\Windows\LanguageComponentsInstaller\ReconcileLanguageResources" -ErrorAction SilentlyContinue
    }

    PROCESS {
        $Language = "English (Australia)"
        $LanguageCode = $LanguagesDictionary[$Language]

        for ($i = 1; $i -le 5; $i++) {
            try {
                Write-Host "*** Installing language pack: $LanguageCode - Attempt $i ***"
                Install-Language -Language $LanguageCode -ErrorAction Stop
                Write-Host "*** Successfully installed: $LanguageCode ***"
                break
            } catch {
                Write-Host "*** Error installing $LanguageCode ***"
                Write-Host $_.Exception.Message
                Start-Sleep -Seconds 5
            }
        }
    }

    END {
        Enable-ScheduledTask -TaskName "\Microsoft\Windows\LanguageComponentsInstaller\Installation" -ErrorAction SilentlyContinue
        Enable-ScheduledTask -TaskName "\Microsoft\Windows\LanguageComponentsInstaller\ReconcileLanguageResources" -ErrorAction SilentlyContinue

        $stopwatch.Stop()
        Write-Host "Completed installation. Time taken: $($stopwatch.Elapsed)"
    }
}
