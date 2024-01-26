# Create ASG
resource "aws_autoscaling_group" "wordpress_asg" {
  name                =   "wordpress_asg"
  max_size            = 99
  min_size            = 1
  health_check_type   = "ELB"
  desired_capacity    = 1
  
  #target_group_arns   = ["arn:aws:elasticloadbalancing:us-east-1:336272677245:targetgroup/project-tg/0b5f3667087281b3"]
  vpc_zone_identifier = [aws_subnet.public1.id, aws_subnet.public2.id, aws_subnet.public3.id]
  launch_template {
    id      = aws_launch_template.mlt.id
    version = "$Latest"
  }
}
resource "aws_autoscaling_policy" "scale_up" {
  name                   = "scale_up"
  policy_type            = "SimpleScaling"
  autoscaling_group_name = aws_autoscaling_group.wordpress_asg.name
  adjustment_type        = "ChangeInCapacity"
  scaling_adjustment     = "1"   # add one instance
  cooldown               = "300" # cooldown period after scaling
}

resource "aws_autoscaling_policy" "scale_down" {
  name                   = "asg-scale-down"
  autoscaling_group_name = aws_autoscaling_group.wordpress_asg.name
  adjustment_type        = "ChangeInCapacity"
  scaling_adjustment     = "-1"
  cooldown               = "300"
  policy_type            = "SimpleScaling"
}