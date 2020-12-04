variable "name" {
  description = "use naming module https://github.com/Voyanta/terraform-terraform-label"
  default = ""
}

variable "tags" {
  default = {}
}

variable "severity" {
  default = "sev2"
}

variable "comparison_operator" {
  default = "LessThanOrEqualToThreshold"
}

variable "evaluation_periods" {
  default = "3"
}

variable "period" {
  default = "900"
}

variable "statistic" {
  default = "Sum"
}

variable "threshold" {
  default = "3"
}

variable "treat_missing_data" {
  default = "missing"
}

variable "metric_name" {
  default = "successful"
}

variable "metric_namespace" {
  default = "uptime"
}

variable "alarm_description" {
  default = "Alarming based off metric from uptime stats"
}

variable "insufficient_data_actions" {
  default = []
}

variable "alarm_actions" {
  description = "(Optional) The list of actions to execute when this alarm transitions into an ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN)."
  default = ""
}

variable "ok_actions" {
  description = "(Optional) The list of actions to execute when this alarm transitions into an OK state from any other state. Each action is specified as an Amazon Resource Name (ARN)."
  default = null
}

variable "dimensions" {
  default = null
}


/*

SOME KNOWN DIMENSIONS:

AutoScalingGroupName
CacheClusterId
DBClusterIdentifier
DBInstanceIdentifier
FunctionName
InstanceId
LoadBalancer
QueueName
TableName
TargetGroup

*/














