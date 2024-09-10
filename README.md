# j0ltWind0wsPr1v3sc Windows-Local-Privilege-Escalation

# PowerShell Enumeration and Reporting Script 

## Description

This PowerShell script is designed for system enumeration and reporting. It provides a user-friendly menu-driven interface that allows users to collect various types of system information and configurations. The script outputs the gathered data to both the console and a text file, enabling efficient system analysis and documentation.

## Features

1. **Banner Display**: 
   - The script starts by displaying a colorful ASCII art banner to grab user attention and set the context. The banner is displayed with alternating colors for visual appeal.

2. **Menu Options**: 
   - After displaying the banner, the script presents a menu with various enumeration options. Users can select from a list of predefined options to gather specific system information. The menu options are color-coded for easier readability.

3. **Data Collection**:
   - **System Information and Hotfixes**: Collects OS details and installed hotfixes.
   - **Group Policy Settings**: Retrieves and displays Group Policy settings.
   - **Network Information**: Gathers network configuration details.
   - **SMB Share Information**: Lists SMB shares on the system.
   - **Active TCP Connections**: Shows active TCP connections.
   - **Firewall Configuration**: Retrieves Windows Firewall configuration details.
   - **Antivirus Status**: Provides information about installed antivirus products.
   - **Installed Applications**: Lists installed applications.
   - **Startup Programs**: Shows programs configured to start on boot.
   - **Scheduled Tasks**: Retrieves scheduled tasks.
   - **Environment Variables**: Lists environment variables.
   - **User Accounts**: Displays local user accounts.
   - **Local Groups Information**: Shows local groups and their members.
   - **Services Information**: Lists system services and their statuses.
   - **Network Shares**: Retrieves information about network shares.
   - **Running Processes**: Lists currently running processes.
   - **Listening Ports**: Shows ports currently listening for network connections.
   - **Enabled Local Users**: Lists enabled local user accounts.
   - **Account and Group Information**: Provides comprehensive account and group information.
   - **PowerShell History**: Retrieves the PowerShell command history.
   - **Group Process By Name**: Groups processes by their names.
   - **Unquoted Service Paths Check**: Checks for unquoted service paths, which can be a security risk.
   - **List UDP Endpoints**: Displays UDP endpoints and their associated ports.

4. **Output Management**:
   - The script outputs data to both the console and a text file named `REPORT_<ComputerName>.txt`, where `<ComputerName>` is the name of the system where the script is executed. This file is created or overwritten each time the script is run, ensuring fresh and updated reports.

5. **User Interaction**:
   - The script prompts the user to select an option from the menu and performs the corresponding action. It also handles invalid selections gracefully and prompts the user to try again.

6. **Exiting**:
   - The script allows users to exit the menu and terminate the script by selecting the exit option (`0`).

## Usage

1. **Run the Script**: Execute the script in a PowerShell environment.
2. **View Banner**: Observe the colorful banner displayed at the start.
3. **Select Options**: Choose options from the menu to gather specific information.
4. **Review Output**: Check the console and the generated text file for the collected data.

This script is useful for system administrators and security professionals who need to collect and document system configurations and statuses for audits, troubleshooting, or reporting purposes.
