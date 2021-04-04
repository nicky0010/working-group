#!/bin/bash
echo ECS_CLUSTER="${cluster_name}" >> /etc/ecs/ecs.config
echo ECS_AVAILABLE_LOGGING_DRIVERS=[\"json-file\",\"syslog\",\"fluentd\"] >> /etc/ecs/ecs.config
