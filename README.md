**Dockerfile to make a docker container with ireport**

## Download iReport

You’ll start downloading Ireport from SourceForge.

1. Join the jaspersoft community site and download your favorite release saving it as iReport-(release number).zip: 
	
	**https://community.jaspersoft.com/project/ireport-designer/releases **

	For example:
	
			$ wget 'https://sourceforge.net/projects/ireport/files/iReport/iReport-5.6.0/iReport-5.6.0.zip'

## Build the image

Build the docker image from the Dockerfile.

1. Placed in cloned repo directory type on console: 

	**$ docker build --build-arg var='iReport-(release number)' -t ireport -f Dockerfile . **

	For example:
		
			$ docker build --build-arg var='iReport-5.6.0' -t ireport -f Dockerfile .

---

## Create and Run the container

Next, you’ll add create the container .

1. Execute the shell script **$ bash ireport.sh**.
