% Specify the path to your rosbag file
bag = rosbag('rosbag_file.bag');

% Display general information about the bag file
disp(bag);

% You can view the available topics in the bag file
topics = bag.AvailableTopics;

% Display the topics
disp(topics);

% Select a specific topic to read
% Replace '/topic_name' with the name of the topic you want to analyze
selectedTopic = select(bag, 'Topic', '/camera_array/cam0/image_raw/compressed');

% Read messages from the selected topic
messages = readMessages(selectedTopic);

% Display the first message (for example)
disp(messages{1});
