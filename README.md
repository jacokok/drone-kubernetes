# drone-kubernetes
kubectl deployments from drone.io

## Example

```yaml
  - name: deploy
    image: doink/drone-kubernetes:latest
    environment:
      KUBERNETES_CONFIG:
        from_secret: kubernetes_config
    settings:
      deployment: test-make-api
      repo: cloud.canister.io:5000/doink/test-make-api
      container: test-make-api
      tag: build-${DRONE_BUILD_NUMBER}
 ```
   
## Docker

```bash
docker build -t doink/drone-kubernetes:latest .
docker push doink/drone-kubernetes:latest
```
