# To disable Screen Sharing 

sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.screensharing.plist 

# To enable Screen Sharing 

sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.screensharing.plist 
