resource "aws_cloudwatch_metric_alarm" "general" {
  alarm_name = var.name 
  metric_name = var.metric_name
  namespace = var.metric_namespace
  alarm_description = var.alarm_description
  datapoints_to_alarm = var.datapoints_to_alarm
  comparison_operator = var.comparison_operator
  period = var.period
  evaluation_periods = var.evaluation_periods
  threshold = var.threshold
  threshold_metric_id = var.threshold_metric_id
  actions_enabled = var.actions_enabled
  statistic = var.statistic
  extended_statistic = var.extended_statistic
  treat_missing_data = var.treat_missing_data
  evaluate_low_sample_count_percentiles = var.evaluate_low_sample_count_percentiles
  insufficient_data_actions = var.insufficient_data_actions
  dimensions = var.dimensions
  #metric_query = var.metric_query
  alarm_actions = var.alarm_actions
  ok_actions = var.ok_actions
  unit = var.unit
  tags = var.tags
}