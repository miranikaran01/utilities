# Instructions to Symlink plist file and Load Launch Agent

## 1. Symlink plist file

```sh
ln -s /Users/karan/personal-projects/utilities/connect_mouse/com.karanconnectmagicmouse.plist ~/Library/LaunchAgents/com.karan.connectmagicmouse.plist
```

## 2. Load Launch Agent

```
launchctl load ~/Library/LaunchAgents/com.karan.connectmagicmouse.plist
```
