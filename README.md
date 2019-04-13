# smartSearch

3-tiers app for POC

Folder Architecture :

    | applications
        | app 1
            | module 1
                | deployment
                    -> module1-deployment.yaml
                | network
                    -> module1-service.yaml
                | storage
                    -> module1-pv.yaml
                    -> module1-claim.yaml
            | module 2
        | app 2

If you want to deploy on kubernetes an app you just need to do

```