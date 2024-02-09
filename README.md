# mjpg-streamer

## Running on SBC

This tool will run on the SBC to produce a video stream accessible from any browser on the same network.

To use mjpg clone this repo in your ___home directory___ and use the provided scripts:

- `mjpg_installer.sh` should run on the SBC to install mjpg.

- ` mjpg_launch.sh` should run on the SBC to run mjpg.

To access the stream from your browser use `SBC_IP:8080/stream.html`.

## Testing on a VM

To run mjpg on a VM you can use the same two scripts but first make sure the VM has access to your webcam. From the Devices menu (upper left corner of your virtualbox window) choose `webcams` and make sure the integrated camera has a check mark next to it.

Test the webcam in your VM before starting mjpg, this can be done by trying to enter a google meeting for example from inside the VM and open your webcam. If you still cannot access the webcam from the VM then you might need to install the `virtualbox guest additions`. 

## Notes

- If you cannot access the stream from your browser, this might mean the firewall on the SBC (or VM) does not allow port 8080. This is easy to fix by running this command:

```bash
sudo ufw allow 8080
```
