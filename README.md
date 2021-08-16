# Chaos Toolkit playground

This repository contains the configuration to set up a [Kind](https://kind.sigs.k8s.io/) cluster, with Google's 
[microservices-demo](https://github.com/GoogleCloudPlatform/microservices-demo) installed, and [chaos-toolkit 
experiments](experiments) that can be executed on that cluster.

## Setting up the playground

There's a [Makefile](Makefile) that contains a few targets that help with setting up the playground.  

```console
# Start kind cluster
make kind-up

# Install microservices-demo
make microservices-up
``` 

## Experiments

Before running the experiments, create a virtual env and install the python dependencies:

```console
python -m venv venv 
source venv/bin/activate
pip install -U -r requirements.txt
```

Each experiment can then be run using the `chaos` command:

```console
chaos run experiments/node-drain/experiment.yaml
```

- [node drain](experiments/node-drain) verifies that the frontend service still works when draining all nodes in a 
  single zone
