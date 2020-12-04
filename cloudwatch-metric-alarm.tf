resource "aws_cloudwatch_metric_alarm" "general" {
  //for_each                  = var.elb_list
  //alarm_name                = join("-",[var.severity,"5xx",each.key])
  alarm_name = var.name 
  metric_name = var.metric_name
  namespace = var.metric_namespace
  alarm_description = var.alarm_description
  comparison_operator = var.comparison_operator
  period = var.period
  evaluation_periods = var.evaluation_periods
  threshold = var.threshold
  statistic = var.statistic
  treat_missing_data = var.treat_missing_data
  
  insufficient_data_actions = []
  dimensions = var.dimensions

  alarm_actions = var.alarm_actions
  ok_actions = var.ok_actions

  tags = var.tags
}