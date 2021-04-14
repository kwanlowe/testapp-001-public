OWNER=kwanlowe
APPNAME=testapp-001
REGISTRY=localhost

build-container:
	podman build --tag $(OWNER):$(APPNAME) -f ./Dockerfile

run:
	podman run -p 8080:8080 --detach $(REGISTRY)/$(OWNER):$(APPNAME)

