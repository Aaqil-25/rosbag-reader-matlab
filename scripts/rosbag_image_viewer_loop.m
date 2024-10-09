% Load your ROS bag file
bag = rosbag('rosbag_file.bag');

% Select the topic containing the compressed images
% Replace '/camera_array/cam1/image_raw/compressed' with the correct topic name from your bag file
imageBag = select(bag, 'Topic', '/camera_array/cam1/image_raw/compressed');

% Read the compressed image messages
compressedImages = readMessages(imageBag);

% Display the number of compressed images
numImages = numel(compressedImages);
%fprintf('Number of images in bag file: %d\n', numImages);

for i = 1:numImages
    compressedImageMsg = compressedImages{i};  % Extract each message
    imageData = compressedImageMsg.Data;  % Get the compressed image byte stream

    % Write to a temporary file
    fid = fopen('temp_image.jpg', 'wb');
    fwrite(fid, imageData);
    fclose(fid);

    % Read and display the image
    image = imread('temp_image.jpg');
    imshow(image);
    %title(['Compressed Image ' num2str(i)]);
    
    pause(0.001);  % Pause to view each image
    
    % Optionally delete the temporary file after each iteration
    delete('temp_image.jpg');
end
