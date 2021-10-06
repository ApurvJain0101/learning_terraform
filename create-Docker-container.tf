terraform{
	required_providers{
		docker = {
			source = "terraform-provider/docker"
		}
	}
}
provider "docker" {}

resource "docker_image" "nginx" {
	nane = "nginx:latest"
	keep_locally = false
}

resouce "docker_container" "nginx" {
	image = docker_image.nginx.latest
	name = "docker-container-tutorial"
	ports {
		internals = 80
		externals = 8000
	}
}
