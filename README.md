# kde-plasma-macos-mods

This repo contins couple of script that can be used to make latte-dock & plasma more like macos.

macos-latte-dock_20200328.patch:
- Retain Dolphin's running indicator even Dolphin is closed (like Finder does in macOS)
- Remove second indicator if there are more than 1 instance running of application (like macOS)
- Always use black indicator even plasma theme tells to use different color
- Add 1px margin between bottom and indicator dot

org.kde.plasma.private.systemtray_main.qml.patch:
- Add more spacing in system tray icons

create-icons.sh:
- Generate calendar icons using Apps-Calendar-empty2.png as their base image

update-icon.sh:
- Update calendar app's icon to match the current date and month (put this in your crontab to be executed on system reboot and at 00:00)
