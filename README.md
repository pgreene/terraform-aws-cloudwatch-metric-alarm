# terraform-aws-cloudwatch-metric-alarm
Terraform Module for AWS Cloudwatch Metric Alarm

## Usage Example

`main.tf #contents`

```bash
module "aws_cloudwatch_metric_alarm_add_spot" {
  source = "git::https://github.com/Voyanta/terraform-aws-cloudwatch-metric-alarm"
  severity = "asg"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods = "2"
  metric_name = "NetworkIn"
  metric_namespace = "AWS/EC2Spot"
  period = "120"
  statistic = "Sum"
  threshold = "2000000"
  dimensions = {
    AutoScalingGroupName = module.aws_asg.name
  }
  alarm_description = "This metric monitors ec2 Network Throughput and scales up accordingly"
  alarm_actions = [module.aws_asg_policy_add_spot.arn] # obtained from terraform-autoscaling-policy module outputs
}
```

## Variables

**comparison_operator** - (Required) Either of the following is supported: `GreaterThanOrEqualToThreshold`, `GreaterThanThreshold`, `LessThanThreshold`, `LessThanOrEqualToThreshold`. Additionally, the values `LessThanLowerOrGreaterThanUpperThreshold`, `LessThanLowerThreshold`, and `GreaterThanUpperThreshold` are used only for alarms based on anomaly detection models.

**evaluation_periods** - (Required) The number of periods over which data is compared to the specified threshold.

**period**

**statistic**

**threshold**

**treat_missing_data**

**metric_name**

**metric_namespace**

**alarm_description** - (Optional) The description for the alarm.

**insufficient_data_actions** - (Optional) The list of actions to execute when this alarm transitions into an INSUFFICIENT_DATA state from any other state. Each action is specified as an Amazon Resource Name (ARN).

**alarm_actions** - (Optional) The list of actions to execute when this alarm transitions into an ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN).

**ok_actions** - (Optional) The list of actions to execute when this alarm transitions into an OK state from any other state. Each action is specified as an Amazon Resource Name (ARN).

## Notes

This module creates a [cloudwatch log metric filter](https://console.aws.amazon.com/cloudwatch/home?region=us-east-1#logs:) | [terraform cloudwatch log metric filter](https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_metric_filter.html)
ß