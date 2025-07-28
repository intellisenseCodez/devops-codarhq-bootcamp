# Core Concepts: Monitoring &Observability 

In modern software development, DevOps has become an important concept, allowing teams to improve productivity, communicate more effectively, collaborating closely, and ultimately boost the scalability of and reliability of their software, a core aim of site reliability engineering (SRE).

Two important concepts within this process are **Monitoring &Observability**. 

## What is Monitoring
Monitoring involves Collecting, analyzing, and using data to track system health and performance. It includes looking at data from different aspects of the product to pinpoint issues, using various infrastructure metrics.

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

## What is Observability?
On the other hand observability is a comprehensive approach to understanding a system based on gathering extensive amounts of data and looking at it in an in-depth manner. 

When your DevOps team achieves observability, you will be better equipped to review your system and keep it functioning smoothly. This is critical for maintaining strong performance.

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


## Monitoring vs. Observability

| **Monitoring** | **Observability** |
|---------------|------------------|
| Focuses on known issues | Helps debug unknown issues |
| Reactive (alerts on failures) | Proactive (provides context for debugging) |
| Relies on predefined metrics | Uses logs, traces, and metrics for deep insights |
| Works well for monolithic systems | Essential for microservices and distributed systems |


## Observability Pillars (The "Three Pillars of Observability")

1. **Logs**  
   - Structured (JSON) or unstructured text.
   - Tools: ELK Stack (Elasticsearch, Logstash, Kibana), Loki, Fluentd.

2. **Metrics**  
   - Time-series data (e.g., Prometheus, Grafana).
   - Aggregated numerical measurements (CPU usage, request rate).

3. **Traces**  
   - Distributed tracing for request flow (e.g., Jaeger, Zipkin).
   - Helps track latency across microservices.

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


