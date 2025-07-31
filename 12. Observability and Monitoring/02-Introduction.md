# Core Concepts: Observability & Monitoring 

In modern software development, DevOps has become an important concept, allowing teams to improve productivity, communicate more effectively, collaborating closely, and ultimately boost the scalability of and reliability of their software, a core aim of site reliability engineering (SRE).

Two important concepts within this process are: 
1. **Observability**
2. **Monitoring**

## What is Observability?
Observability is a comprehensive approach to understanding a system based on gathering extensive amounts of data and looking at it in an in-depth manner. 

**Observability allows us to understand the internal state of our systems i.e. applications, infrastructure, network etc.**

1. Observability answer questions **WHAT?**:

   This questions allows you to understand the internal state of the system.

   1. What is the Disk usage?
   2. What is the CPU usage?
   3. What is the Memory usage?
   4. How many HHTP requests has failed or successfull.

2. Observability answers questions **WHY?**:

   This questions allows you to understand why a particular issue occurs on your system.

   - Why does an HTTP requests failed?
   - Why is there a memory leakage causing extra memory usage?

3. Observability answers questions **HOW?**:

   This questions allows you to understand how to fix this issues.

   - How to fix HTTP requests that fails?


When your DevOps team achieves observability, you will be better equipped to review your system and keep it functioning smoothly. This is critical for maintaining strong performance.

## Observability Pillars (The "Three Pillars of Observability")

1. **Metrics**  
   Responsible for understanding WHAT is the internal state of the system.
   - Time-series/Historical data (e.g., Prometheus, Grafana).
   - Aggregated numerical measurements (CPU usage, request rate).

2. **Logs**  
   Responsible for understanding WHY is the system in a particular state.
   - Structured (JSON) or unstructured text.
   - Tools: ELK Stack (Elasticsearch, Logstash, Kibana), Loki, Fluentd.

3. **Traces** 
   Responsible for understanding HOW to fix a particular state.
   - Distributed tracing for request flow (e.g., Jaeger, Zipkin).
   - Helps track latency across microservices.


**Observability makes it possible to**:
- Report on the overall health of a system.
- Report on a system state.
- Monitor for key metrics.
- Debug production systems.
- Track down previously unknown information about a system.
- View the side effects of upgrades and other changes to a system.
- Trace, understand, and diagnose problems between systems and services.
- Stay ahead of outages and degradation.
- Better manage capacity planning.


## What is Monitoring
Monitoring involves Collecting, analyzing, and using data to track system health and performance. It includes looking at data from different aspects of the product to pinpoint issues, using various infrastructure metrics.

This focuses on a single pillar of Observability - Metrics, it collects metrics from system to implement and design a dashboard to gain insights into the collected metrics.

The purpose of this is to detect and alert on issues before they impact users.

**Types**:
  - **Infrastructure Monitoring**: CPU, memory, disk, network.
  - **Application Monitoring**: Response times, error rates, throughput.
  - **Log Monitoring**: Aggregating and analyzing logs for anomalies.


## Key Metrics to Monitor (The "Golden Signals")

1. **Latency** – Time taken to serve a request.
2. **Traffic** – Demand on the system (e.g., requests per second).
3. **Errors** – Rate of failed requests.
4. **Saturation** – How "full" the system is (e.g., CPU/memory usage).
5. **Availability** – Uptime and reliability of services.


## Observability Vs Monitoring 

| **Observability** | **Monitoring** |
|------------------|---------------|
| Helps debug unknown issues | Focuses on known issues |
| Proactive (provides context for debugging) | Reactive (alerts on failures) |
| Uses logs, traces, and metrics for deep insights | Relies on predefined metrics |
| Essential for microservices and distributed systems | Works well for monolithic systems | 


## Who is responsible for Observability & Monitoring ?

In a development team, Observability & Monitoring is a shared-responsibility among the developers and the devops engineers. It is important for the developers to implements **metrics**, **logs** and **traces** endpoints on the application inorder to be ultilize by any Observability tools like: Prometheus, Elasticsearch, Jaegar etc.

## Available Tools for Observability and Monitoring

This guide summarizes essential tools used for monitoring and observability, categorized by the **three pillars**: **Metrics**, **Logs**, and **Traces**, along with some all-in-one platforms and exporters.

## 1. Metrics — *Track performance over time*

These tools are used to collect, store, and visualize time-series data from systems, applications, and infrastructure.

| Tool | Description |
|------|-------------|
| **Prometheus** | Open-source system monitoring and alerting toolkit. Excellent for metrics collection and alerting. |
| **Grafana** | Visualization and dashboarding tool. Often used with Prometheus, InfluxDB, and others. |
| **Datadog** | Cloud-based monitoring tool offering metrics, logs, and traces with intuitive dashboards. |
| **InfluxDB** | High-performance time-series database. Great for IoT and infrastructure metrics. |
| **Zabbix** | All-in-one monitoring solution for networks and servers. |
| **Nagios** | Classic infrastructure monitoring system using plugins and scripts. |

## 2. Logs — *Understand what happened and when*

These tools help centralize, search, and analyze logs from applications, containers, servers, and more.

| Tool | Description |
|------|-------------|
| **ELK Stack (Elasticsearch, Logstash, Kibana)** | Powerful and scalable log aggregation and search platform. |
| **Loki** | Log aggregation system from Grafana Labs. Lightweight and easy to use with Grafana. |
| **Fluentd / Fluent Bit** | Log collectors and forwarders. Often used in Kubernetes and cloud-native stacks. |
| **Graylog** | Centralized log management with filtering, alerting, and dashboards. |
| **Papertrail** | Simple cloud-hosted log management system with real-time search. |

## 3. Traces — *Understand how requests flow across services*

Distributed tracing tools provide visibility into request paths, latency, and bottlenecks across microservices.

| Tool | Description |
|------|-------------|
| **Jaeger** | CNCF project for distributed tracing. Supports OpenTelemetry and works well with Prometheus and Grafana. |
| **Zipkin** | Lightweight and easy-to-deploy distributed tracing system. |
| **Tempo** | Scalable tracing backend from Grafana Labs. Integrates seamlessly with Prometheus and Loki. |
| **OpenTelemetry** | Open standard for collecting metrics, logs, and traces. Compatible with most backends. |

## 4. All-in-One Platforms — *Unified observability experience*

These tools combine metrics, logs, traces, and sometimes APM features into a single platform.

| Tool | Description |
|------|-------------|
| **Datadog** | Complete observability platform with metrics, logs, tracing, and synthetics. |
| **New Relic** | Full-stack monitoring and APM with real-time telemetry across services. |
| **Dynatrace** | AI-powered observability platform with deep automation and analytics. |
| **Splunk Observability Cloud** | Enterprise-grade observability across infrastructure, apps, and logs. |


## Exporters for Prometheus

Prometheus uses exporters to collect metrics from various systems.

| Exporter | Description |
|----------|-------------|
| **Node Exporter** | Exposes hardware and OS metrics from *nix systems (CPU, memory, disk, etc.). |
| **Blackbox Exporter** | Probes endpoints via HTTP, HTTPS, TCP, ICMP (ping) to monitor uptime and latency. |
| **MySQL/PostgreSQL Exporters** | Collect database metrics like query performance and connection stats. |
| **cAdvisor** | Container-level resource usage metrics (CPU, memory, filesystem) for Docker. |
| **Kube-State-Metrics** | Exposes Kubernetes resource states (Pods, Deployments, Nodes, etc.) for monitoring. |


## 📌 Next Steps

- Combine tools (e.g., **Prometheus + Grafana**, **Loki + Tempo + Grafana**) for full observability
- Add alerting and automation for proactive issue response
- Explore managed observability platforms for scale
 
- 

## Best Practices

1. **Define SLOs, SLIs, and SLAs**  
   - **SLO (Service Level Objective)**: Target reliability (e.g., 99.9% uptime).  
   - **SLI (Service Level Indicator)**: Measured metric (e.g., error rate < 0.1%).  

2. **Implement Alerting Wisely**  
   - Avoid "alert fatigue" – only alert on actionable issues.  
   - Use severity levels (e.g., P1, P2).  

3. **Correlate Logs, Metrics, and Traces**  
   - Use tools like Grafana Tempo or OpenTelemetry for unified observability.  

4. **Monitor CI/CD Pipelines**  
   - Track build times, failure rates, deployment frequency.  

5. **Adopt Observability-Driven Development**  
   - Instrument applications early (e.g., add Prometheus metrics, OpenTelemetry traces).  


