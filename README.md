# ENSC151

## ![#f03c15](https://via.placeholder.com/15/f03c15/f03c15.png) `Make sure to plug in your Macbook with a power adapter! Also, please make sure that you turn off auto sleep feature on Macbook for the duration of installation of following packages. You can turn it back on after you successfully follow steps given below`

> Go to System Prefrences > Battery.

> Then, You can find the option to turn off auto sleep by clicking on ***Power Adapter*** menu on left panel of Battery window.

> Check "Prevent your Mac from automatically sleeping when the display is off"
>
>![Sleep Turn Off Instructions on Power Adapter](pictures/Mac_System_Preferences.png?raw=true "Sleep Turn Off Instructions On Power Adapter")

## How to open terminal App?
> Press "Command Key and Spacebar" together and type Terminal.

> Open the marked application as per the image below.
>
>![Terminal](pictures/terminalInstruction.png?raw=true "Terminal Instruction")

## Homebrew Installation Instructions

Open Terminal and type following commands ONE by ONE

> Install "Homebrew"

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Running Automation Script

> Run Automation Script to setup Eclipse IDE on your M1 Mac

```bash
cd ~/Downloads
git clone https://github.com/jenish-rudani/ENSC151 ENSC151_M1_Mac_UbuntuSetup
cd ENSC151_M1_Mac_UbuntuSetup
chmod +x arm64-ensc151sw.sh
./arm64-ensc151sw.sh
```

## Restart your MAC (!!  IMPORTANT)
> Do not forget to restart!!

```bash
sudo shutdown -r now
```

## Open Eclipse
> In order to open Eclipse window, go to your ***DESKTOP*** on MacOs and double-click on startEclipse.command application. *IF you are opening Eclipse for the first time, you will need to type 'yes' and press return.
>
> ![desktopCommand](pictures/desktopCommand.png?raw=true "desktopCommand")

# Assigning Icon to startEclipse.command
> Copy icon.avif from ***icon*** directory to Desktop
> 
> On your MacOS Desktop follow following GIF to assign the icon for the script. You should hit play if GIF below doesn't autoplay
> 
> You can open **get info** menu by Right clicking on startEclipse.command script. Then, you can just drag and drop icon.avif over to the empty icon in get info menu
>
> In case if you would like to delete the icon, you can simply click on the icon in the get info menu and click CMD+DELETE. THat will revert icon to default look.
> 
> ![iconAssignmentInstruction](pictures/iconAssignmentInstruction.gif)

> You can delete the icon.avif file after you assign it to startEclipse.command

## Where to FIND Shared Directory?
Shared directory that is used to transfer files/projects between host OS (MacOS on ARM-based Mac) and Ubuntu Linux virtual machine hosted on Multipass can be found in MacOS under ~/Public/VMsf-22_04. Please note that ~ (tilde) is a "shortcut" to denote a respective user's home directory on both MacOS and Linux (and other Unix-based OSes).

# Troubleshooting (Follow this if you run into some issues)

> If the application to run Eclipse fails, you will need the IP Address of the Multipass Instance
> Type in following command in terminal to retrieve the ip address.

```bash
multipass list
```

> It should give you and output ***similar*** to following. (Ip-address might be different on your machine!)
> 
> ![multipassListOutput](pictures/multipassListOutput.png?raw=true "multipassListOutput")
> Take a note of Ip-Address under IPv4 (In my case it is 192.168.65.21)


> Now, just type in following command to finally start eclipse application. 
> 
> DO NOT FORGET TO replace with your Ip-Address in place of "192.168.65.21" in following command
```
ssh -Y ubunutu@192.168.65.21 /home/ubuntu/eclipse/eclipse
```
> You will need to type 'yes' and then press enter. 
>
>![sshFirstTimeOutput](pictures/sshFirstTimeOutput.png?raw=true "sshFirstTimeOutput")
