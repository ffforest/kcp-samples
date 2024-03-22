import catalog.models.schema.v1 as ac
import catalog.models.schema.v1.workload as wl
import catalog.models.schema.v1.workload.network as n
import catalog.models.schema.v1.workload.container as c
import catalog.models.schema.v1.monitoring as m

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
        ports: [
            n.Port {
                port: 80
            }
        ]
    }
    accessories: {
        # Add the monitoring configuration backed by Prometheus
        "kusionstack/monitoring@v0.1.0": m.Prometheus{
            path:           "/metrics"
            port:           "web"
        }
    }
}
