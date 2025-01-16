import kam.v1.app_configuration as ac
import service as svc
import service.container as c
import monitoring as m
import network as n
import opsrule as o
import mysql as mysql
import k8smanifest as km

helloworld: ac.AppConfiguration {
    workload: svc.Service {
        containers: {
            "helloworld": c.Container {
                image = "gcr.io/google-samples/gb-frontend:v5"
                resources: {
                    "cpu": "500m"
                    "memory": "512Mi"
                }
                env: {
                    "aaa": "aaa"
                    "basccaaa": "aaa"
                }
            }
        }
        replicas: 2
    }
    accessories: {
        # Add the monitoring configuration backed by Prometheus
        "monitoring": m.Prometheus{
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
        "opsrule": o.OpsRule {
            maxUnavailable: "30%"
        }
        "mysql": mysql.MySQL {
            type: "local"
            version: "8.0"
        }
    }
}
