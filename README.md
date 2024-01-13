## Fan Boost Mode Notification Script

This Bash script monitors the fan boost mode of ASUS TUF laptops and sends notifications when the mode changes. It includes labels for different fan boost modes (Normal Mode, OverBoost, Silent Mode) and the ability to display an associated image in notifications.

## Prerequisites

- Linux environment (tested on [Arch Linux x86_64 6.6.10-arch1-1 ])
- `inotify-tools` package (install using your package manager)
- `libnotify` package (install using your package manager)

## Usage
- Arch through AUR
   ```bash
   yay -S tuf-fan-boost-notification   
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

To make the script start with your system, follow the instructions in the Autostart Section of the script's README.

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
