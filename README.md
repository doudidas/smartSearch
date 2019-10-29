# smartSearch

3-tiers app for POC for Kubernetes

## Requierement

### CNI

This application need to have contour as a CNI. You can deploy yourself contour or use my preconfigured file with:

`kubectl apply  -f plugins/`

### Storage (not mendatory)

This application contain a mongo Database. You can decide to have a full stateless application or bind the database storage path with a predifined persistent volume.

If you are looking for a specific path you can generate this file with your own path.

⚠️ **Be sure that the folders already exist on your hosts** ⚠️

``` yaml
# persistent-volumes.yaml
apiVersion: v1
kind: PersistentVolume
metadata:
  namespace: smartsearch
  labels:
    app: smartSearch
    stage: production
    folder: config
  name: mongo-prod-config
spec:
  accessModes:
    - ReadWriteOnce
  capacity:
    storage: 10Mi
  hostPath:
    path: yourCustomPath # Ex: /data/kubernetes/smartsearch/mongo/config
  storageClassName: manual
---
apiVersion: v1
kind: PersistentVolume
metadata:
  namespace: smartsearch
  labels:
    app: smartSearch
    stage: production
    folder: db
  name: mongo-prod-db
spec:
  accessModes:
    - ReadWriteOnce
  capacity:
    storage: 1Gi
  hostPath:
    path: yourCustomPath # Ex: /data/kubernetes/smartsearch/mongo/db
  storageClassName: manual
---
```

Then apply it on your cluster before deploying the app:
`kubectl apply -f persistent-volumes.yaml`

## Deployment

`kubectl apply -f smartsearch-app/`

## Help and debug

If you need visibility of what you have setup you can use octant to have a better overview of all ressources.

[![logo](https://github.com/vmware-tanzu/octant/blob/master/site/docs/master/octant-logo.png?raw=true)](https://github.com/vmware-tanzu/octant)

[Github Repository](https://github.com/vmware-tanzu/octant)
