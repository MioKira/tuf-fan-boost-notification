## Fan Boost Mode Notification Script

This Bash script monitors the fan boost mode of ASUS TUF laptops and sends notifications when the mode changes. It includes labels for different fan boost modes (Normal Mode, OverBoost, Silent Mode) and the ability to display an associated image in notifications.

## Prerequisites

- Linux environment (tested on [Arch Linux x86_64 6.6.10-arch1-1 ])
- `inotify-tools` package (install using your package manager)
- `libnotify` package (install using your package manager)

## Usage
- Arch through AUR
   ```bash
   yay -S tuf-fan-boost-notification-git   
   ```
- Other Distros
1. Download or clone the repository to your local machine:

   ```bash
   git clone https://github.com/MioKira/tuf-fan-boost-notification.git
   cd tuf-fan-boost-notification
    ```
2. Make the script executable:

   ```bash
    chmod +x FanNotifications.sh
    ```
3. Run the script:

   ```bash
   ./FanNotification.sh
   ```

4. The script will continuously monitor the fan boost mode and display notifications when changes occur.

## Customization

   - Fan Boost Modes:
        The script maps numeric fan boost modes to labels (Normal Mode, OverBoost, Silent Mode). You can customize these labels in the get_mode_label function.

  -  Notification Image:
        If you want to include a custom image in notifications, place the image file in the same directory as the script and update the icon_path variable accordingly.

## Autostart with System

To ensure that the Fan Boost Mode Notification Script starts automatically with your system, you can add it to your system's startup applications. The steps vary depending on your desktop environment. Here are instructions for some common desktop environments:

### GNOME:

1. Press `Alt + F2` to open the Run Command dialog.

2. Type `gnome-session-properties` and press Enter.

3. Click on "Add" and enter the following details:
   - Name: Fan Boost Notification
   - Command: `/path/to/FanNotification.sh` (replace with the actual path to your script)

4. Click "Add" and then close the Startup Applications Preferences.

### KDE (Plasma):

1. Open System Settings.

2. Go to "Startup and Shutdown" -> "Autostart."

3. Click on "Add Script" and enter the following details:
   - Name: Fan Boost Notification
   - Command: `/path/to/FanNotification.sh` (replace with the actual path to your script)

4. Click "OK."

### XFCE:

1. Open the XFCE Application Menu.

2. Go to "Settings" -> "Session and Startup."

3. Navigate to the "Application Autostart" tab.

4. Click "Add" and enter the following details:
   - Name: Fan Boost Notification
   - Command: `/path/to/FanNotification.sh` (replace with the actual path to your script)

5. Click "OK."

### LXQt:

1. Open LXQt Configuration Center.

2. Go to "Session Settings."

3. Navigate to the "Autostart" tab.

4. Click "Add" and enter the following details:
   - Name: Fan Boost Notification
   - Command: `/path/to/FanNotification.sh` (replace with the actual path to your script)

5. Click "Add" and then close the Configuration Center.

### Cinnamon:

1. Open the Cinnamon Menu.

2. Go to "Preferences" -> "Startup Applications."

3. Click "Add" and enter the following details:
   - Name: Fan Boost Notification
   - Command: `/path/to/FanNotification.sh` (replace with the actual path to your script)

4. Click "Add" and then close the Startup Applications dialog.

Adjust the command path accordingly to the actual location of your script. This process ensures that your fan boost notification script runs automatically when your desktop environment starts.


## License
This script is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

-  Inotify-tools
-  Libnotify
-  ASUS TUF laptop users and the community.

## Contributing

Feel free to contribute by opening issues or submitting pull requests.

## Author
-Mohamed Tarek
