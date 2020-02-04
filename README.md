# William's Penn Labs DevOps Challenge  [![Build Status](https://travis-ci.com/KeenWill/PennLabs-DevOps-Challenge.svg?branch=master)](https://travis-ci.com/KeenWill/PennLabs-DevOps-Challenge)

## Documentation

### What did I complete?
- Dockerized the provided Flask app
- Created a docker-compose app that combines the Flask container with a redis container for local execution.
- Created a travis CI/CD workflow that builds the Flask app and puts the dokcer container on [Docker Hub](https://hub.docker.com/repository/docker/williamgoeller/pennlabs_devops_challenge)
- Using the kubeconfig provided by Peyton, deployed the Flask app and a Redis container to a k8s cluster (config files are in `/kube/`).
- Connected a domain to the app (bennbabs.williamgoeller.com)

### How to run (Locally)

To build and run the app locally, run `docker-compose build` and `docker-compose up`.

Visit `localhost:5000` in your browser to view the app.

### How to kubernetes?

Setup `kubectl` to connect to a cluster. Run `kubectl apply -f ./kube/`. Eventually (hopefully) an external IP should be assigned to the app (run `kubectl get svc app --watch` to watch the app service for an external ip update). Go to the IP in ur favorite browser. profit.