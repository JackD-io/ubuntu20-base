.PHONY: build

name = ubuntu20-base
namespace = 21bit
repo_url = registry.cn-beijing.aliyuncs.com
version = latest

build:
	docker build -t $(repo_url)/$(namespace)/$(name):$(version) .

clean:
	docker rmi $(repo_url)/$(namespace)/$(name):$(version)

bash:
	docker run -it --rm $(repo_url)/$(namespace)/$(name):$(version) bash

deploy:
	docker push $(repo_url)/$(namespace)/$(name):$(version)

test:
	docker run --rm $(repo_url)/$(namespace)/$(name):$(version)
