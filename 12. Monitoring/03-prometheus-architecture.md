## Prometheus Architecture

### Overview

Prometheus is a popular open-source monitoring and alerting system written in Golang, capable of **collecting and processing metrics** from various targets. You can also **query, view, analyse the metrics and get alerted based on the thresholds**.

Here is the high level overview of Prometheus architecture.

![Prometheus architecture](https://devopscube.com/content/images/2025/03/prometheus-architecture.gif)

### Key Components

Prometheus primarily consists of the following.

- **Prometheus Server**

    This is the brain of the metric-based monitoring system. The main job of the server is to collect the metrics from various targets using pull model.

    - **Retrieval (Scraping)**: Pulls metrics from **targets (HTTP endpoints)** via `scrape_configs`.  
    - **Storage**: Time-series database (TSDB) stores metrics on disk.  
    - **HTTP Server**: Serves queries and dashboards (default port: `9090`).  

    Prometheus periodically scrapes the metrics, based on the **scrape interval** that we mention in the **Prometheus configuration file**.

- **Prometheus Time-Series Database (TSDB)**
   
    Prometheus uses a Time Series Database (TSDB) to store all its data.

    - The periodic metric data which prometheus collects from the Tagets are stored in a database called time-series database.

    - By default Prometheus stores all its data in an efficient format (chunks) in the local disk. It also has an inbuilt mechanisms to manage data kept for long time - rentention policy.

    You can choose any of the following data retention policies.
    1. **Time based retention**: Data will be kept for the specified days. The default retention is 15 days.

    2. **Size-based retention**: You can specify the maximum data TSDB can hold. Once this limit it reached, prometheus will free up the space to accommodate new data.


- **Prometheus Targets**

    Target is the source where Prometheus scrape the metrics. A target could be servers, services, Kubernetes pods, application endpoints, etc.

    By default prometheus looks for metrics under `metrics_path` path of the target. The default path can be changed in the target configuration.
   

- **Prometheus Exporters**: 
    
    Exporters is a third-party system like agents that run on the targets. It converts metrics from specific system to format that prometheus understands (e.g., `node_exporter` for OS metrics).

    There are a lot of community Exporters available categorized into various sections such as Databases, Hardware, Issue trackers and continuous integration, Messaging systems, Storage, Software exposing Prometheus metrics, Other third-party utilities, etc.

    Few Examples are:

    1. Node Exporter
    2. Blackbox Exporter
    
    You can see the list of Exporters from each category from the [official documentation](https://prometheus.io/docs/instrumenting/exporters/?ref=devopscube.com).


- **Prometheus Service Discovery**

    Prometheus uses two methods to scrape metrics from the targets.
    
    - **Static configs**: When the targets have a static IP or DNS endpoint, we can use those endpoints as targets.

    - **Sevice Discovery**: In most autoscaling systems and distributed systems like Kubernetes, the target will not have a static endpoint. In this case, that target endpoints are discovered using prometheus service discovery and targets are added automatically to the prometheus configuration.

    - Dynamically discovers targets (e.g., Kubernetes, Consul, AWS EC2).  
   - Configurable via `scrape_configs` in `prometheus.yml`.  

- **Prometheus Push Gateway**

    Prometheus by default uses pull mechanism to scrap the metrics. However, there are scenarios where metrics need to be pushed to prometheus.

    In a situation where we could not wait for prometheus to pull the metrics, we need to push the metrics to prometheus. To push metrics, prometheus offers a solution called **Pushgateway**. It is kind of a intermediate gateway.

- **Prometheus Client Libraries**

    Prometheus Client Libraries are software libraries that can be used to instrument application code to expose metrics in the way Prometheus understands.

    In cases where you need custom instrumentation or you want to create your own exporters, you can use the client libraries.

    Prometheus has Client Libraries for almost every programming language, and also if you want to create a Client Library, you can do it.

    To learn more about the guidelines of the creation and view the list of Client Libraries, you can refer to the [official documentation](https://prometheus.io/docs/instrumenting/clientlibs/?ref=devopscube.com#client-libraries).

- **Prometheus Alert Manager**

    Alertmanager is the key part of Prometheus monitoring system. Its primary job is to send alerts based on metric thresholds set in the Prometheus alert configuration.

    The alert get triggered by Prometheus and sent to Alertmanager. It in turn sends the alerts to the respective notification systems/receivers (email, slack etc) configured in the alert manager configurations.

- **Prometheus PromQL**

    PromQL is a flexible query language that can be used to query time series metrics from the prometheus.

    We can directly used the queries from the Prometheus user interface or we can use curl command to make a query over the command line interface.

