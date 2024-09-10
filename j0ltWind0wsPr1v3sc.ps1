param(
    [Parameter(Mandatory=$False)]
    [Switch]$a
)

# Function to display the banner with colors
function Show-Banner {
    $banner = @'
                                                                                                                                                                             
                                                      +..................-++++                      
                                                     +..................++++                        
                                                   +-.................-+++                          
                                                  +-................-++++                           
                                                 +-................-+++                             
                                                +................-++++                              
                                               +................++++                                
                                             +-...............-++++                                 
                                            +-...............+++++++                                
                                           +....................-+++                                
                                          +--++++..............+++                                  
                                         +++++++..............+++                                   
                                         +++++-........-+++--+++                      +++++         
                                            +.........+         +                 +      +++        
                          ---              +........+           +      ++++++++++++      +++        
                  +++       +-            +.......-+           ++++++                   ++++        
                  +          +     +++++++--.......-++        +                         +++         
                  +          ++++++          ++-.....+       ++                        ++++         
                 ++          ++                  +-.-        +                 +++++++++++          
                 ++++      ++                      ++       +++++++++++        +++++++++++          
                 ++++     +                        +         ++++++++++        ++                   
                    -    +         ++-...-++       +        +++       +        +++                  
                     +  ++        +-........+     +         +++       ++        ++                  
                     -  +        +...........++   +        +++        -+        ++                  
                     +  +       +.............+  ++        ++++        +        ++                  
                     +  +      -.............-+  +                +++  +        ++                  
             +++    ++  +    +-.............-+  ++                ++++ +         ++                 
           ++           ++  +..............-+ ++++++             ++++  ++        ++                 
        +++              +++...............-.-++++    ++++++    ++++   ++        ++                 
         ++               +..--+++-.........++++    +++++++++++++++     +        ++                 
          +++           +++++++++-........-++++    ++++        ++       ++++++++++++                
            +++++++++++++++++++ -........++++    +++++                   +++++++++++                
              ++++++++++++    +-.......-+++   ++++++                                                
                              -.......+++++++++++                                                   
                             -......-++++++++                                                       
                            +.....-++++                                                             
                           +.....++++                                                               
                          -....-+++                                                                 
                         -....++++                                                                  
                        -...-+++                                                                    
                       -...++++                                                                     
                      -..-+++                                                                       
                     +.-++++                                                                        
                    +.++++                                                                          
                   +.++++                                                                           
                  +++++                                                                             
                 ++++                                                                               
                ++++                                                                                
               +++                                                                                  
              +++                                                                                   
              +                                                                                                                            
            "t---OFFENCE BY ENNUMERATION---"    
            "t       By s0ck3t",
    
            "t---WINDOWS ENNUMERATION---"
'@

    $colors = @("Red", "Yellow", "Green", "Cyan", "Magenta", "White", "Gray", "DarkRed", "DarkGreen", "DarkYellow", "DarkBlue", "DarkCyan", "DarkMagenta", "DarkGray", "Blue")

    $bannerLines = $banner -split "`n"
    $colorIndex = 0

    foreach ($line in $bannerLines) {
        # Simplified color testing
        Write-Host $line -ForegroundColor $colors[$colorIndex]
        $colorIndex = ($colorIndex + 1) % $colors.Count
    }

    # Add extra space before the prompt
    Write-Host ""

    # Pause the script to allow the user to see the banner
    #Read-Host -Prompt "Press Enter to Follow the White Rabbit and continue..." -ForegroundColor Green
}

Show-Banner

# Function to display the menu and get user input
function Show-Menu {
    # Define colors for each menu option
    $menuColors = @(
        "Red", "Yellow", "Green", "Cyan", "Magenta", "White", "Gray", "DarkRed", "DarkGreen", "DarkYellow",
        "DarkBlue", "DarkCyan", "DarkMagenta", "DarkGray", "DarkYellow", "Blue", "Green", "Cyan", "Magenta",
        "White", "Gray", "DarkRed"  # Ensure we have enough colors
    )

    # Your menu code here
}

# Call the Show-Menu function if needed
#Show-Menu




# Function to display the menu and get user input
function Show-Menu {
    # Define colors for each menu option
    $menuColors = @(
        "Red", "Yellow", "Green", "Cyan", "Magenta", "White", "Gray", "DarkRed", "DarkGreen", "DarkYellow",
        "DarkBlue", "DarkCyan", "DarkMagenta", "DarkGray", "DarkYellow", "Blue", "Green", "Cyan", "Magenta",
        "White", "Gray", "DarkRed"  # Ensure we have enough colors
    )
    
    Write-Host "Select the ENUMERATION option to run:" -ForegroundColor Green
     # Add extra space before the prompt
    Write-Host ""
    $menuItems = @(
        "1: System Information and Hotfixes",
        "2: Group Policy Settings",
        "3: Network Information",
        "4: Share Information",
        "5: Active TCP Connections",
        "6: Firewall Configuration",
        "7: Antivirus Status",
        "8: Installed Applications",
        "9: Startup Programs",
        "10: Scheduled Tasks",
        "11: Environment Variables",
        "12: User Accounts",
        "13: Local Groups Information",
        "14: Services Information",
        "15: Network Shares ",
        "16: Running Processes",
        "17: Listening Ports",
        "18: Local Group Information",
        "19: Enabled Local Users",
        "20: Account and Group Information",
        "21: PowerShell History",
        "22: Group Process By Name",
        "23: Unquoted Service Paths Check",
        "24: List UDP Endpoints",
        "0: Exit"
    )

    for ($i = 0; $i -lt $menuItems.Count; $i++) {
        $color = $menuColors[$i % $menuColors.Count]
        Write-Host $menuItems[$i] -ForegroundColor $color
    }

   # Write-Host "0: Exit" -ForegroundColor Blue
    $selection = Read-Host "Enter your choice (0-23)" 
    return $selection
}

# Function to write output to text file
function Write-ToTextFile {
    param (
        [string]$section,
        [string]$output
    )
    $textContent = @"
==== $section ====
$output
"@
    Add-Content -Path $textOutputFile -Value $textContent
}

# Main script logic

# Pause to allow the user to see the banner before showing the menu
Write-Host "Press Enter to follow the White Rabbit and continue..." -ForegroundColor Green
Read-Host


# Gather IP and Computer Name
$ip = ((ipconfig | findstr [0-9].\.)[0]).Split()[-1]
$blue = (gi env:\Computername).Value
$dateTime = Get-Date -Format 'dd/MM/yyyy-H:mm:ss' 

# Prepare initial log content
$initialLog = @"
Collecting data for $blue ($ip) | $dateTime
"@

# Display the initial log message
Write-Host $initialLog -ForegroundColor Red

$textOutputFile = "$pwd\REPORT_$blue.txt"

# Initialize or clear the output file
if (Test-Path $textOutputFile) {
    Clear-Content -Path $textOutputFile
} else {
    New-Item -Path $textOutputFile -ItemType File
}

# Write the initial log to the text file
Add-Content -Path $textOutputFile -Value $initialLog
 # Add extra space before the prompt
    Write-Host ""

# Main script loop
do {
    $choice = Show-Menu

    switch ($choice) {
        "1" {
            $output = "--- System Information and Hotfixes ---n"
            $output += (systeminfo  | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type" /C:"OsArchitecture " | Format-List | Out-String) + "n"
            $output += (Get-HotFix | Select-Object  HotFixID | Format-List | Out-String)
            Write-Host $output -ForegroundColor White
            Write-ToTextFile -section "General Information and Hotfixes" -output $output
        }
        "2" {
            $output = "--- Group Policy Settings ---n"
            # Run gpresult.exe -z and capture the output
            $gpresultOutput = gpresult.exe -z | Format-List  | Out-String
            # Append the formatted output to the $output variable
            $output += $gpresultOutput + "n"
            # Display the output in the console
            Write-Host $output -ForegroundColor Yellow
            # Save the output to a text file
            Write-ToTextFile -section "Group Policy Settings" -output $output
        }
        "3" {
            $output = "--- Network Information ---n"
            $output += (Get-NetIPConfiguration | Format-List | Out-String)
            Write-Host $output -ForegroundColor Green
            Write-ToTextFile -section "Network Information" -output $output
        }
        "4" {
            $output = "--- SMB Share Information ---n"
            $output += (Get-SmbShare | Format-List | Out-String)
            Write-Host $output -ForegroundColor Cyan
            Write-ToTextFile -section " SMB Share Information" -output $output
        }
        "5" {
            $output = "--- Active TCP Connections ---n"
            $output += ((Get-NetTCPConnection | Select-Object RemoteAddress, RemotePort, State | Sort-Object RemoteAddress, RemotePort, State -Unique | Format-Table | Out-String) + "n")
            Write-Host $output -ForegroundColor Red
            Write-ToTextFile -section "Active TCP Connections" -output $output
        }
        "6" {
            $output = "--- Windows Firewall Configuration ---n"
            $output += (netsh advfirewall show currentprofile | Format-List | Out-String)
            Write-Host $output -ForegroundColor DarkRed
            Write-ToTextFile -section " Windows Firewall Configuration" -output $output
        }
        "7" {
            $output = "--- Antivirus Status ---n"
            $output += (Get-CimInstance -Namespace "root/SecurityCenter2" -ClassName "AntivirusProduct" | Format-List | Out-String)
            Write-Host $output -ForegroundColor Gray
            Write-ToTextFile -section "Antivirus Status" -output $output
        }
        "8" {
            $output = "--- Installed Applications ---n"
            $output += (Get-WmiObject -Class Win32_Product | Format-List | Out-String)
            Write-Host $output -ForegroundColor DarkRed
            Write-ToTextFile -section "Installed Applications" -output $output
        }
        "9" {
            $output = "--- Startup Programs ---n"
            $output += (Get-CimInstance -ClassName Win32_StartupCommand | Format-List | Out-String)
            Write-Host $output -ForegroundColor DarkGreen
            Write-ToTextFile -section "Startup Programs" -output $output
        }
        "10" {
            $output = "--- Scheduled Tasks ---n"
            $output += (Get-ScheduledTask | Format-List | Out-String)
            Write-Host $output -ForegroundColor DarkYellow
            Write-ToTextFile -section "Scheduled Tasks" -output $output
        }
        "11" {
            $output = "--- Environment Variables ---n"
            $output += (Get-ChildItem Env: | Format-List | Out-String)
            Write-Host $output -ForegroundColor DarkBlue
            Write-ToTextFile -section "Environment Variables" -output $output
        }
        "12" {
            $output = "--- User Accounts ---n"
            $output += (Get-LocalUser | Format-List | Out-String)
            Write-Host $output -ForegroundColor DarkCyan
            Write-ToTextFile -section "User Accounts" -output $output
        }
        "13" {
            $output = "--- Local Groups Information ---n"
            $output += (Get-LocalGroup | Format-List | Out-String)
            Write-Host $output -ForegroundColor DarkMagenta
            Write-ToTextFile -section "Local Groups Information" -output $output
        }
        "14" {
            $output = "--- Services Information ---n"
            $output += (Get-Service | Format-List | Out-String)
            Write-Host $output -ForegroundColor DarkGray
            Write-ToTextFile -section "Services Information" -output $output
        }
        "15" {
            $output = "--- Network Shares ---n"
            $output += (net use | Format-List | Out-String)
            Write-Host $output -ForegroundColor Red
            Write-ToTextFile -section "Network Shares" -output $output
        }
        "16" {
            $output = "--- Running Processes ---n"
            $output += (Get-Process | Format-List | Out-String)
            Write-Host $output -ForegroundColor Blue
            Write-ToTextFile -section "Running Processes" -output $output
        }
        "17" {
            $output = "--- Listening Ports ---n"
            $output += (Get-NetTCPConnection | Where-Object {$_.State -eq "Listen"} | Format-List | Out-String)
            Write-Host $output -ForegroundColor Green
            Write-ToTextFile -section "Listening Ports" -output $output
        }
        "18" {
            $output = "--- Local Group Information ---n"
            $output += (Get-LocalGroup | Format-List | Out-String)
            Write-Host $output -ForegroundColor Cyan
            Write-ToTextFile -section "Local Group Information" -output $output
        }
        "19" {
            $output = "--- Enabled Local Users ---n"
            $output += (Get-WmiObject -Class Win32_UserAccount | Where-Object { $_.Disabled -eq $false } | Format-List | Out-String)
            Write-Host $output -ForegroundColor DarkBlue
            Write-ToTextFile -section "Enabled Local Users" -output $output
        }
        "20" {
            $output = "--- Account and Group Information ---n"
            $output += (Get-WmiObject -Class Win32_UserAccount | Format-List | Out-String) + "n"
            $output += (whoami /all | Format-List | Out-String) + "n"
            $output += (Get-WmiObject -Class Win32_UserAccount | Where-Object { $_.Disabled -eq $false } | Format-List | Out-String) + "n"
            $output += (Get-WmiObject -Class Win32_Group | Select-Object Name, Description, SID | Format-List | Out-String) + "n"
            $output += (net accounts | Format-List | Out-String)
            Write-Host $output -ForegroundColor Magenta
            Write-ToTextFile -section "Account and Group Information" -output $output
        }
        "21" {
            $output = "--- PowerShell History ---n"
            $output += (Get-Content (Get-PSReadlineOption).HistorySavePath | Format-List | Out-String)
            Write-Host $output -ForegroundColor White
            Write-ToTextFile -section "PowerShell History" -output $output
        }
        "22" {
            $output = "--- Group Process By Name ---n"
            $output += (Get-Process | Group-Object Name | Format-List | Out-String)
            Write-Host $output -ForegroundColor Gray
            Write-ToTextFile -section "Group Process By Name" -output $output
        }
        "23" {
            $output = "--- Unquoted Service Paths Check ---n"
            $services = Get-WmiObject -class Win32_Service -Property Name, DisplayName, PathName, StartMode |
                        Where-Object {$_.PathName -notlike "C:\Windows*" -and $_.PathName -notlike '"*'} |
                        Select-Object Name, DisplayName, StartMode, PathName 
            if ($services) {
                $output += "Unquoted Service Paths found:n"
                foreach ($service in $services) {
                    $output += "Name: $($service.Name)n"
                    $output += "DisplayName: $($service.DisplayName)n"
                    $output += "StartMode: $($service.StartMode)n"
                    $output += "PathName: $($service.PathName)n"
                    $output += "Running: $($service.State)n"
                }
            } else {
                $output += "No unquoted service paths were found.n"
            }
            Write-Host $output -ForegroundColor Red
            Write-ToTextFile -section "Unquoted Service Paths Check" -output $output
        }
        "24" {
            $output = "--- List UDP Endpoints ---n"
            $output += (Get-NetUDPEndpoint | Select-Object LocalAddress, LocalPort   | Format-Table | Out-String)
            Write-Host $output -ForegroundColor DarkGreen
            Write-ToTextFile -section "List UDP Endpoints" -output $output
        }
        "0" {
            Write-Host "Exiting..."
            break
        }
        default {
            Write-Host "Invalid selection, please try again." -ForegroundColor Red
        }
    }
} while ($choice -ne "0")
