#!/bin/sh

mkdir -p /config
cd /config
# cd /etc/prometheus
# rm /etc/prometheus/prometheus.yml

cat > prometheus.yml << EOF
global:
  scrape_interval:     15s # Set the scrape interval to every 15 seconds. Default is every 1 minute.
  evaluation_interval: 15s # Evaluate rules every 15 seconds. The default is every 1 minute.

alerting:
  alertmanagers:
  - static_configs:
    - targets:
      # - alertmanager:9093

# Load rules once and periodically evaluate them according to the global 'evaluation_interval'.
rule_files:
  # - "first_rules.yml"
  # - "second_rules.yml"

# A scrape configuration containing exactly one endpoint to scrape:
# Here it's Prometheus itself.
scrape_configs:
  - job_name: ${JOBNAME:-jobname}
    static_configs:
    - targets: ['${TARGET_HOST:-0.0.0.0}:${TARGET_PORT:-8080}']
      labels:
        instance: ${INSTANCE:-jobname}

# metrics_path defaults to '/metrics'
# scheme defaults to 'http'.
EOF

exec prometheus --web.listen-address="${PROMETHEUS_L_ADDR:-0.0.0.0}:${PROMETHEUS_PORT:-9090}" --config.file="/config/prometheus.yml"