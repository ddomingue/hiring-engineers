Your answers to the questions go here.

## Collecting metrics

### Tags and screenshot

See
* [snapshots/Q1_hosts_map.png](snapshots/Q1_hosts_map.png)

### Install a database and its integration

See
* [docker-compose yaml](docker-compose.yaml) file for database instance
* [src/conf.d/postgres.d/conf.yaml](src/conf.d/postgres.d/conf.yaml) for integration configuration
* [snapshots/Q1_database_metrics.png](snapshots/Q1_database_metrics.png)

### Custom agent that submits random metric

See
* [src/check.d/custom_my_metric.py](src/check.d/custom_my_metric.py)

### Change custom interval

See 
* [src/conf.d/custom_my_metric.yaml](src/conf.d/custom_my_metric.yaml)

### Bonus question

Yes, via the edit metadata API endpoint : "PUT https://api.datadoghq.com/api/v1/metrics/<METRIC_NAME>"


## Vizualizing data

### Create timeboard with metrics

See 
* [src/scripts/create_vizualization.sh](src/scripts/create_vizualization.sh)

### Timeboard snapshots

See
* [snapshots/Q2_time_board.png](snapshots/Q2_time_board.png)
* [snapshots/Q2_snapshot.png](snapshots/Q2_snapshot.png)

### Bonus question

Anomaly graph highlights outliers from usual metric behaviours

## Monitoring data

See
* [snapshots/Q3_monitoring.png](snapshots/Q3_monitoring.png)

### Bonus question

See
* "snapshots/Q3_downtime.png"

## Collecting APM Data

** todo **

## Final Question

* Monitoring machine learning bias and variance during learning phases on a model
* Monitoring smart building sensors using multiple agent collectors aggregating sensor data on site
* Monitoring baby room and sending alerts when he's woken up
