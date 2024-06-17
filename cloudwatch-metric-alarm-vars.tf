variable "name" {
  description = "(Required) The descriptive name for the alarm. This name must be unique within the AWS account"
  default = ""
}

variable "comparison_operator" {
  description = "(Required) The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand. Either of the following is supported: GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold. Additionally, the values LessThanLowerOrGreaterThanUpperThreshold, LessThanLowerThreshold, and GreaterThanUpperThreshold are used only for alarms based on anomaly detection models."
  default = "LessThanOrEqualToThreshold"
}

variable "evaluation_periods" {
  description = "(Required) The number of periods over which data is compared to the specified threshold."
  default = "3"
}

variable "period" {
  description = "(Optional) The period in seconds over which the specified statistic is applied."
  default = "900"
}

variable "statistic" {
  description = "(Optional) The statistic to apply to the alarm's associated metric. Either of the following is supported: SampleCount, Average, Sum, Minimum, Maximum"
  default = "Sum"
}

variable "threshold" {
  description = "(Optional) The value against which the specified statistic is compared. This parameter is required for alarms based on static thresholds, but should not be used for alarms based on anomaly detection models."
  default = "3"
}

variable "threshold_metric_id" {
  description = "(Optional) If this is an alarm based on an anomaly detection model, make this value match the ID of the ANOMALY_DETECTION_BAND function."
  default = null
}

variable "actions_enabled" {
  description = "(Optional) Indicates whether or not actions should be executed during any changes to the alarm's state. Defaults to true."
  default = null
}

variable "treat_missing_data" {
  description = "(Optional) Sets how this alarm is to handle missing data points. The following values are supported: missing, ignore, breaching and notBreaching. Defaults to missing."
  default = "missing"
}

variable "metric_name" {
  description = "(Optional) The name for the alarm's associated metric. See docs for supported metrics."
  default = "successful"
}

variable "metric_namespace" {
  description = "(Optional) The namespace for the alarm's associated metric. See docs for the list of namespaces. See docs for supported metrics."
  default = "uptime"
}

variable "metric_query" {
  description = "(Optional) Enables you to create an alarm based on a metric math expression. You may specify at most 20."
  default = null
}

variable "alarm_description" {
  default = "Cloudwatch Metric Alarm created by Terraform."
}

variable "datapoints_to_alarm" {
  description = "(Optional) The number of datapoints that must be breaching to trigger the alarm."
  default = null
}

variable "extended_statistic" {
  description = "(Optional) The percentile statistic for the metric associated with the alarm. Specify a value between p0.0 and p100."
  default = null
}

variable "evaluate_low_sample_count_percentiles" {
  description = "(Optional) Used only for alarms based on percentiles. If you specify ignore, the alarm state will not change during periods with too few data points to be statistically significant. If you specify evaluate or omit this parameter, the alarm will always be evaluated and possibly change state no matter how many data points are available. The following values are supported: ignore, and evaluate."
  default = null
}

variable "insufficient_data_actions" {
  description = "(Optional) The list of actions to execute when this alarm transitions into an INSUFFICIENT_DATA state from any other state. Each action is specified as an Amazon Resource Name (ARN)."
  default = null
}

variable "alarm_actions" {
  description = "(Optional) The list of actions to execute when this alarm transitions into an ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN)."
  default = null
}

variable "ok_actions" {
  description = "(Optional) The list of actions to execute when this alarm transitions into an OK state from any other state. Each action is specified as an Amazon Resource Name (ARN)."
  default = null
}

variable "dimensions" {
  description = "(Optional) The dimensions for the alarm's associated metric. For the list of available dimensions see the AWS documentation here."
  default = null
}

variable "unit" {
  description = "(Optional) The unit for the alarm's associated metric."
  default = null
}

variable "tags" {
  default = {}
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














