% Load your ROS bag file
bag = rosbag('rosbag_file.bag');

% Select the topic containing the compressed images
% Replace '/camera_array/cam1/image_raw/compressed' with the correct topic name from your bag file
imageBag = select(bag, 'Topic', '/camera_array/cam1/image_raw/compressed');

% Read the compressed image messages
compressedImages = readMessages(imageBag);

% Display the number of compressed images
numImages = numel(compressedImages);
fprintf('Number of images in bag file: %d\n', numImages);

% Extract and display the first compressed image (example)
compressedImageMsg = compressedImages{1}; % Extract the first message

% The data is in the form of a compressed byte stream (e.g., jpeg)
imageData = compressedImageMsg.Data;  % Compressed image byte stream

% Write the compressed data to a temporary file
fid = fopen('temp_image.jpg', 'wb');
fwrite(fid, imageData);
fclose(fid);

% Read the image using imread (since the data is now in a valid JPEG file)
image = imread('temp_image.jpg');

% Show the image using imshow
imshow(image);

% Clean up the temporary file
delete('temp_image.jpg');
