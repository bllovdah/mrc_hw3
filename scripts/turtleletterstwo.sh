rosservice call /reset
# B turtle:
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[5.0, 0.0, 0.0]' '[0.0, 0.0, -4.6]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.1, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[5.0, 0.0, 0.0]' '[0.0, 0.0, -4.6]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1.3, 0.0, 0.0]' '[0.0, 0.0, 0.0]'

# L turtle
rosservice call /spawn 7 3.5 0 "turtle2"
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.6]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[4.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[-4.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -1.6]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'

#rosservice list /reset



