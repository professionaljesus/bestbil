# Folders
* `catkin_src_packages` contains the differnet ROS/catkin packages.

  Assuming you have a catkin workspace installed at `~/catkin_ws` and the
  repository is located at `~/git/GroupC` you can symlink the
  `catkin_src_packages` folder inside the catkin workspace `src` folder.
  ```shell
  cd ~/git/GroupC/src/catkin_src_packages/
  ln -s "$(pwd)" ~/catkin_ws/src/
  ```

  Here we use `$(pwd)` to get the absolute path to the `catkin_src_packages`.
  If you already know the absolute path to the repository folder you could of
  course use it directly, ie
  `ln -s /absolute-path-to-repo/src/catkin_src_packages ~/catkin_ws/src/`.

  You can then use `catkin_make` from the workspace folder as normal to build
  the ROS packages.

* `Teensy Firmware` contains the teensy firmware including instructions on how
  to compile/upload it.

# Description from template readme:
>All source code for the project. Consider the use of subfolders if you use
>multiple programmings languages in your project. The code should be tidy,
>readable, and rigurously documented.
