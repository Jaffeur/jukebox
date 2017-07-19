# jukebox
Jukebox server and react native client 

## Music
Put music file in /home/music
Don't forget to complete file's field such as Artist and TrackName

## Mopidy

### Install
run file ***quick-install.sh*** with admin rights

### Config

copy past ***mopidy.conf*** in ~/.config/mopidy/

### Run
* Scan music files
```bash
$sudo mopidy local scan
```
## Test with virtualbox

* Install VirtualBox on host

* Install OS Guest (we will consider it's ubuntu)
Do not configure network yet

* Configure network
The aim is to reach Guest server from Host

Todo so:
1. Click on File->Preferences in the VirtualBox menu-bar
2. Select the Network option from the side menu and click on the Host-only networks tab and if there isn't add a new one
3. The default options for the newly-created Host-only network should be fine. Activate DHCP server, and check field are correct (server address must be deferent from IPV4 one (ex: dhcp: 192.168.179.2, ipv4: 192.168.179.1, mask 255.255.255.0 and limits between two correct values (ex: 192.168.179.102 and 192.168.179.200)
5. Now save all the settings in Preferences
6. Now open up the settings of your Guest machine and navigate to the Network option from the side menu and click on the Adapter 2 tab (Adapter 1 should be NAT or Bridge)
7. In the Attached to section, click on the dropdown and choose Host-only Adapter and in the Name section nested in it, choose the newly-created Host-only network. Don't forget to check the Enable Network Adapter option
8.Save these settings and boot into your Guest machine.

Now typing 
```bash 
ifconfig
``` 
in guest, you should be able to see it's ip address to call it from host (ex: 192.168.179.XXX)


If you want to test use virtualbox
