% Assignment 3, Exercise 4: Plotting rosbag data

% Load rosbag
bag = rosbag('/home/bllovdah/catkin_ws/src/mrc_hw3/data/myturtle.bag')

bag.AvailableTopics

msg_pose = rosmessage('turtlesim/Pose')
showdetails(msg_pose)

bagselect = select(bag,'Topic','turtle1/pose');

ts = timeseries(bagselect,'X','Y','Theta','LinearVelocity','AngularVelocity');

x = ts.Data(:,1);
y = ts.Data(:,2);
vel= ts.Data(:,4);
th= ts.Data(:,3);
u = vel.*cos(th);
v = vel.*sin(th);
ii = 1:10:length(x);
figure
plot(x,y)
title('XY Plot')
xlabel('X Position')
ylabel('Y Position')

figure
plot(th)
title('Theta Plot')
xlabel('Time')
ylabel('Theta')

figure
quiver(x(ii),y(ii),u(ii),v(ii));
title('Quiver Plot')
xlabel('X Position')
ylabel('Y Position')


