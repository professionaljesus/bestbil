********************************************************************************
Below are some instructions to get up and running.

1. To setup the network bridge between the LIDAR and the jetson run:
    `sudo ./setup_network_bridge.sh`

2. From your local computer run the following command to update the time:
    `ssh -t ubuntu@192.168.1.1 "sudo date -s '@$(date +%s)'"`

3. The git repo is cloned to `~/git/GroupC`

4. The catkin workspace is available at `~/catkin_ws`

5. To update this message edit `src/Shell scripts/motd.md` in the repo

********************************************************************************
