{
  "kind": "docker_plan",
  "mode": "cli",
  "workdir": "/tmp/flowops",
  "env": {},
  "steps": [
    {
      "engine": "docker",
      "action": "run",
      "image": "cr.jaegertracing.io/jaegertracing/jaeger:2.14.0",
      "name": "jaeger",
      "detach": true,
      "ports": [
        "16686:16686",
        "4317:4317",
        "4318:4318",
        "5778:5778",
        "9411:9411"
      ],
      "env": [
        "TZ=UTC"
      ],
      "volumes": []
    }
  ],
  "collect": {
    "enabled": true,
    "dockerfile_name": "flowops.plan.json",
    "compose_name": "docker-compose.yml"
  }
}
