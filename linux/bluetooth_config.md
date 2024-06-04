### Problem
Slow reconnection with Bluetooth

### Solution
Disable power saving mode

* Edit /etc/bluetooth/main.conf
  * `FastConnectable=true`
* Restart bluetooth service 
  * `sudo service bluetooth restart`
