# smartSearch

3-tiers app for POC

This project has been build with Kustomization. This framework allow to build global Yaml files from yaml files on source and overlays yaml.

more details here : [kustomize](https://github.com/kubernetes-sigs/kustomize)

you can download and build global Yaml by using the following command:

## Kustomization

### Dev Environment

```bash
kustomize build overlays/dev -o build/smartSearch-dev.yaml
```

### Prod Environment

```bash
kustomize build overlays/dev -o build/smartSearch-dev.yaml
```

## Mac users

Just run generateYaml to get yaml files on build folder

```bash
./generateYaml
```

## Deploy on kubernetes

After the Yaml files are generated you just need to deploy them on the desired namespace

```bash
kubectl apply -f ./build/
```