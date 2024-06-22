# Instructions to Symlink plist file and Load Launch Agent

## 1. Get Mouse Mac Address
```shell
system_profiler SPBluetoothDataType | grep -A 20 "Magic Mouse"
```

## 2. Get Keyboard Mac Address
```shell
system_profiler SPBluetoothDataType | grep -A 20 "Magic Keyboard"
```

## 3. Symlink plist file

```shell
ln -s /Users/karan/personal-projects/utilities/connect_mouse/com.karanconnectmagicmouse.plist ~/Library/LaunchAgents/com.karan.connectmagicmouse.plist
```

## 4. Load Launch Agent

```shell
launchctl load ~/Library/LaunchAgents/com.karan.connectmagicmouse.plist
```
