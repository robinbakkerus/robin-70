
Function runFirebaseScripts{
    Write-host "Run scripts ..." 
    # flutter clean
    flutter build web --web-renderer html
    firebase deploy --only hosting
}

#--------------------------------------------------------
runFirebaseScripts