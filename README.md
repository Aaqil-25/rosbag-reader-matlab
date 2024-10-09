
# MATLAB ROS Bag Reader

This project provides a collection of MATLAB scripts for reading and processing ROS bag files, specifically focusing on extracting and visualizing image data.

## Features
- Read and process ROS bag files in MATLAB
- Extract and view compressed images
- Loop through multiple images in a ROS bag

## Requirements
- MATLAB R2021a or newer
- Robotics System Toolbox
- Image Processing Toolbox

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/Aaqil-25/rosbag-reader-matlab.git
   cd rosbag-reader-matlab
   ```

## Usage Method

### 1. Reading a ROS Bag File

To read and process a ROS bag file, use the `rosbag_reader.m` script. Replace `path_to_rosbag.bag` with the actual path to your `.bag` file.

```matlab
% Example usage:
bag = rosbag('path_to_rosbag.bag');   % Load the ROS bag file
rosbag_reader(bag);                   % Call the reader script to process the bag file
```

### 2. Extracting and Viewing Compressed Images

If your ROS bag contains compressed images, use the `rosbag_image_viewer.m` script to extract and view them. Replace `/camera/image/compressed` with the correct topic name from your ROS bag.

```matlab
% Example usage:
bag = rosbag('path_to_rosbag.bag');   % Load the ROS bag file
rosbag_image_viewer(bag, '/camera/image/compressed');  % Extract and display images from the topic
```

### 3. Looping Through Multiple Images in a ROS Bag

If you want to loop through and display multiple images stored in your ROS bag, use the `rosbag_image_viewer_loop.m` script.

```matlab
% Example usage:
bag = rosbag('path_to_rosbag.bag');   % Load the ROS bag file
rosbag_image_viewer_loop(bag, '/camera/image/compressed');  % Loop through images and display them
```

### 4. Example Output

When running the `rosbag_image_viewer.m` or `rosbag_image_viewer_loop.m` scripts, you will see the compressed images from your ROS bag file displayed in MATLAB’s figure window.

---

## Contribution
Contributions are welcome! Please submit issues or pull requests if you have any improvements or bug fixes.
