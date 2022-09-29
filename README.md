# ENSC151

## ![#f03c15](https://via.placeholder.com/15/f03c15/f03c15.png) `Make sure to plug in your Macbook with a power adapter! Also, please make sure that you turn off auto sleep feature on Macbook for the duration of installation of following packages. You can turn it back on after you successfully follow steps given below`

> Go to System Prefrences > Battery.

> Then, You can find the option to turn off auto sleep by clicking on ***Power Adapter*** menu on left panel of Battery window.

> Check "Prevent your Mac from automatically sleeping when the display is off"
![Sleep Turn Off Instructions on Power Adapter](pictures/Mac_System_Preferences.png?raw=true "Sleep Turn Off Instructions On Power Adapter")

## How to open terminal App?
> Press "Command Key and Spacebar" together and type Terminal.

> Open the marked application as per the image below.
![Terminal](pictures/terminalInstruction.png?raw=true "Terminal Instruction")

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
> In order to open Eclipse window, go to your ***DESKTOP*** on MacOs and double-click on startEclipse.command application

# Troubleshooting (Follow this if you run into some issues)

> If the application to run Eclipse fails, you will need the IP Address of the Multipass Instance
> Type in following command in terminal to retrieve the ip address.

```bash
multipass list
```

> It should give you and output ***similar*** to following. (Ip-address might be different on your machine!)
![multipassListOutput](pictures/multipassListOutput.png?raw=true "multipassListOutput")
> Take a note of Ip-Address under IPv4 (In my case it is 192.168.65.21)


> Now, just type in following command to finally start eclipse application. 
> 
> DO NOT FORGET TO replace with your Ip-Address in place of "192.168.65.21" in following command
```
ssh -Y ubunutu@192.168.65.21 /home/ubuntu/eclipse/eclipse
```
> You will need to type 'yes' and then press enter. 
![sshFirstTimeOutput](pictures/sshFirstTimeOutput.png?raw=true "sshFirstTimeOutput")
