# Dockerized Prometheus

A simple Prometheus setup for monitoring a Tendermint-based node with configuration at runtime


## Config

The following ENV variables should be set:

PROMETHEUS_L_ADDR  
PROMETHEUS_PORT  
JOBNAME  
TARGET_HOST  
TARGET_PORT  
INSTANCE  

Example Configuration (k8s yaml format)

```yaml
- name: PROMETHEUS_L_ADDR
  value: "0.0.0.0"
- name: PROMETHEUS_PORT
  value: "9020"
- name: JOBNAME
  value: "cosmos-001"
- name: TARGET_HOST
  value: "cosmos-001"
- name: TARGET_PORT
  value: "26660"
- name: INSTANCE
  value: "cosmos-001"
```