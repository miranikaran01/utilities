# Instructions to run the script everytime Macbook wakes up from sleep

peripherals.sh will export mac addresses of all peripherals to connect \
peripherals.sh is gitignored because it contains mac addresses \
peripherals.sh should reside one dir above a project so that it can be shared by multiple projects

## Supported peripherals and required exported vars
1. Keyboard - KEYBOARD_MAC_ADDRESS
2. Mouse - MOUSE_MAC_ADDRESS

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
