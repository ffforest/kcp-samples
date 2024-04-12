import kam.v1.app_configuration as ac
import kam.v1.workload as wl
import kam.v1.workload.container as c
import monitoring as m
import network as n

helloworld: ac.AppConfiguration {
    workload: wl.Service {
        containers: {
            "helloworld": c.Container {
                image = "gcr.io/google-samples/gb-frontend:v4"
                resources: {
                    "cpu": "500m"
                    "memory": "512Mi"
                }
            }
        }
        replicas: 2
    }
    accessories: {
        # Add the monitoring configuration backed by Prometheus
        "kusionstack/monitoring@v0.1.0": m.Prometheus{
            path:           "/metrics"
            port:           "web"
        }
        "network": n.Network {
            ports: [
                n.Port {
                    port: 80
                }
            ]
        }
    }
}
